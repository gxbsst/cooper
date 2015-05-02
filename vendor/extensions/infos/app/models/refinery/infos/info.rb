module Refinery
  module Infos
    require Rails.root.join('lib', 'mapping_keyword.rb')

    class Info < Refinery::Core::BaseModel
      default_scope :order => 'created_at DESC'
      self.table_name = 'refinery_infos'      
    
      acts_as_indexed :fields => [:title, :source, :content]

      validates :title, :presence => true, :uniqueness => true

      after_create :expire_page, :add_keyword_url
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

      def add_keyword_url
        m = MappingKeyword.new
        m.paterns.each do |patern| 
          m.replace(self, patern)
        end
      end
    end
  end
end
