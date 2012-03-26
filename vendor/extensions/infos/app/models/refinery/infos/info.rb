module Refinery
  module Infos
    class Info < Refinery::Core::BaseModel
      self.table_name = 'refinery_infos'      
    
      acts_as_indexed :fields => [:title, :source, :content]

      validates :title, :presence => true, :uniqueness => true
              
    end
  end
end
