module Refinery
  module Infos
    class Info < Refinery::Core::BaseModel
      default_scope :order => 'created_at DESC'
      self.table_name = 'refinery_infos'      
    
      acts_as_indexed :fields => [:title, :source, :content]

      validates :title, :presence => true, :uniqueness => true

      after_create :expire_page
      after_destroy :expire_page
      after_save :expire_page
      
      scope :recent, where("created_at > ?", Time.now.at_beginning_of_year)
      scope :for_year, lambda {|year| where(["created_at >= ? AND created_at < ?", Date.new(year), Date.new(year+1)]).
          order('created_at DESC, position ASC')}

      def previous_info
        self.class.where( ["created_at > ?", created_at]).order("created_at DESC").last
      end

      def next_info
        self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at DESC")
      end

      def expire_page
        ::ActionController::Base.expire_page('/index.html')
      end
    end
  end
end
