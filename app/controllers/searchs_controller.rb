# encoding: utf-8
class SearchsController < ApplicationController

  def index
    @products ||= find_products  
  end
  
  private 

  def find_products
    tyre = params[:tyre]
    aspect_ratio = params[:aspect_ratio]
    diameter = params[:diameter]
    brand = params[:brand]
    car_type = params[:car_type]
    decorative = params[:decorative]
    
    products = Product.order(:tyre)
    # products = products.where("tyre like ?", "%#{keywords}%") if keywords.present?
    products = products.where(tyre: tyre) if tyre.present?
    products = products.where(aspect_ratio: aspect_ratio) if aspect_ratio.present?
    products = products.where(diameter: diameter) if diameter.present?
    products = products.where(brand: brand) if brand.present?
    products = products.where(car_type: car_type) if car_type.present?
    products = products.where(decorative: decorative) if decorative.present?
    products
  end

end