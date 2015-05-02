# encoding: utf-8
class StoresController < ApplicationController

  def map
    @zoom = 9
    @center = params[:center].split(',')
    if params[:region].present?
      @stores ||= find_store
      # 即使没有经纬度， 也应该显示门店
      @stores_2 ||= find_all_store
      @tudes = []
      @stores.each_with_index do |store, index|
        a = []
        a << store.address
        a << store.longitude
        a << store.latitude
        a << index + 1
        @tudes << a
      end
    else
      @tudes = []
    end

    render :layout => false
  end

  def search
    @title = '查找店铺_全国汽车轮胎专卖店|轮胎价格咨询 - 固铂轮胎中国官网'
    @meta_keywords = '固铂轮胎价格,汽车轮胎价格,轮胎专卖,汽车轮胎店'
    @meta_description = '固铂轮胎专卖店，招牌店，嘉车坊等全国汽车轮胎店联系信息尽在查找店铺。汽车轮胎价格，轮胎店铺服务等，尽在您的掌握。'
    # @json = Store.first.to_gmaps4rails
    @center =[31.2059, 121.399703] #上海cooper 地址
    @zoom = 8
    if request.post?
      @stores ||= find_store
      # 即使没有经纬度， 也应该显示门店
      @stores_2 ||= find_all_store
      @tudes = []
      @stores.each_with_index do |store, index|
        a = []
        a << store.address
        a << store.longitude
        a << store.latitude
        a << index + 1
        @tudes << a 
      end
      
      @center =  [@stores.first.longitude, @stores.first.latitude] unless @tudes.blank?
      
      #if params[:region][:city].present?
      #  @zoom = 8
      #else
      #  @zoom = 8
      #end
      
      flash[:error] = "查找不到店铺" if @store_2.blank?
      
      if params[:region][:full_address].present?
        render :action => "search_2"
      end
      
    end
    
  end
  
  def search_2
    @title = '查找店铺_全国汽车轮胎专卖店|轮胎价格咨询 - 固铂轮胎中国官网'
    @meta_keywords = '固铂轮胎价格,汽车轮胎价格,轮胎专卖,汽车轮胎店'
    @meta_description = '固铂轮胎专卖店，招牌店，嘉车坊等全国汽车轮胎店联系信息尽在查找店铺。汽车轮胎价格，轮胎店铺服务等，尽在您的掌握。'
    # @json = Store.first.to_gmaps4rails
    @center =[31.2059, 121.399703] #上海cooper 地址
    @zoom = 8
    if request.post?
      @stores ||= find_store
      # 即使没有经纬度， 也应该显示门店
      @stores_2 ||= find_all_store
      
      @tudes = []
      @stores.each_with_index do |store, index|
        a = []
        a << store.address
        a << store.longitude
        a << store.latitude
        a << index + 1
        @tudes << a 
      end
      
      @center =  [@stores.first.longitude, @stores.first.latitude] unless @tudes.blank?
      
      #if params[:region][:city].present?
      #  @zoom = 5
      #else
      #  @zoom = 5
      #end
      
      flash[:error] = "查找不到店铺" if @store_2.blank?
      
    end
  end

  private
  
  def find_store
    province = params[:region][:province]
    city = params[:region][:city]
    shop_type = params[:region][:shop_type]
    full_address = params[:region][:full_address]
    
    @stores = Store.where(["longitude <> ''"])
    # products = products.where("tyre like ?", "%#{keywords}%") if keywords.present?
    @stores = @stores.where(provice: province) if province.present?
    @stores = @stores.where(city: city) if city.present?
    @stores = @stores.where(shop_type: shop_type) if shop_type.present?
    @stores = @stores.where([ "full_address like ?", "%#{params[:region][:full_address].gsub(/\s+/, "")}%" ]) if full_address.present?
    @stores
  end
  
  def find_all_store
    province = params[:region][:province]
    city = params[:region][:city]
    shop_type = params[:region][:shop_type]
    full_address = params[:region][:full_address]
    
    @stores_2 = Store.order("shop_type")
    # products = products.where("tyre like ?", "%#{keywords}%") if keywords.present?
    @stores_2 = @stores_2.where(provice: province) if province.present?
    @stores_2 = @stores_2.where(city: city) if city.present?
    @stores_2 = @stores_2.where(shop_type: shop_type) if shop_type.present?
    @stores_2 = @stores_2.where([ "full_address like ?  OR address like ?",
    "%#{params[:region][:full_address].gsub(/\s+/, "")}%", 
    "%#{params[:region][:full_address].gsub(/\s+/, "")}%" ]) if full_address.present?
    @stores_2
  end
  

end
