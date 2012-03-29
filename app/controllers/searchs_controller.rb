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
    
    products = Product.order(:tyre).group(:name)
    # products = products.where("tyre like ?", "%#{keywords}%") if keywords.present?
    products = products.where(tyre: tyre).group(:name) if tyre.present?
    products = products.where(aspect_ratio: aspect_ratio).group(:name) if aspect_ratio.present?
    products = products.where(diameter: diameter).group(:name) if diameter.present?
    products = products.where(brand: brand).group(:name) if brand.present?
    products = products.where(car_type: car_type).group(:name) if car_type.present?
    products = products.where(decorative: decorative).group(:name) if decorative.present?
    products
  end

end