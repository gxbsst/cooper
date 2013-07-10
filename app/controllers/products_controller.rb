# encoding: utf-8
class ProductsController < ApplicationController

  def search

    @title ='在线选配轮胎_汽车厂商/品牌|花纹|尺寸 - 固铂轮胎中国官网'
    @meta_keywords = '买轮胎'
    @meta_description = '买轮胎？请使用固铂在线选配轮胎计算器。您不仅可以根据汽车厂商/品牌查找，奥迪，宝马等品牌轮胎任意选；同时也可以使用轮胎花纹，尺寸进行专业选配，断面宽/轮胎直径/扁平比/轮辋直径尽在掌握。'
    @product = Product.new
  end

end
