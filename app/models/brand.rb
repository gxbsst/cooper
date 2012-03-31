class Brand < ActiveRecord::Base
  
  class << self
    
    def brand_collection
      group(:brand_name_zh).order(:brand_name_zh).collect{|s| [s.brand_name_zh, s.brand_name_en] unless s.brand_name_zh.blank? }.compact
    end
    
    def car_type_collection
      group(:car_type_en).collect{|s| [s.car_type_zh, s.car_type_en ] unless s.car_type_en.blank? }.compact
    end

    def decorative_collection
       group(:name).collect{|s| [s.name,s.name] unless s.name.blank? }.compact
    end
  end
end