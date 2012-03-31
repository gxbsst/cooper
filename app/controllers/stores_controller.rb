# encoding: utf-8
class StoresController < ApplicationController

  def search
    # @json = Store.first.to_gmaps4rails
    @center =[31.2059, 121.399703] #上海cooper 地址
    @zoom = 10
    if request.post?
      @stores ||= find_store
      
      
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
      
      if params[:region][:city].present?
        @zoom = 10
      else
        @zoom = 8
      end
      
      flash[:error] = "查找不到店铺" if @tudes.blank?
      
      if params[:region][:full_address].present?
        render :action => "search_2"
      end
      
    end
    
  end
  
  def search_2
    # @json = Store.first.to_gmaps4rails
    @center =[31.2059, 121.399703] #上海cooper 地址
    @zoom = 10
    if request.post?
      @stores ||= find_store
      
      
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
      
      if params[:region][:city].present?
        @zoom = 10
      else
        @zoom = 8
      end
      
      flash[:error] = "查找不到店铺" if @tudes.blank?
      
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
  

end