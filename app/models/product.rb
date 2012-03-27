class Product < ActiveRecord::Base


  class << self

    # 轮胎
    def tyre_collection
      group(:tyre).collect{|p| [p.tyre, p.tyre] }.compact
    end

    # 扁平比
    def aspect_ratio_collection
      group(:aspect_ratio).collect{|p| [p.aspect_ratio, p.aspect_ratio] }.compact
    end
    
    # 直径
    def diameter_collection
      group(:diameter).collect{|p| [p.diameter, p.diameter] }.compact
    end
    
    # 品牌
    def brand_collection
      group(:brand).collect{|p| [p.brand, p.brand] }.compact
    end
    
    # 车型
    def car_type_collection
      group(:car_type).collect{|p| [p.car_type, p.car_type] }.compact
    end
    
    # 花纹
    def decorative_collection
      group(:decorative).collect{|p| [p.decorative, p.decorative] }.compact
    end
    

  end

end
