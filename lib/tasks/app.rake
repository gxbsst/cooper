# encoding: utf-8
require 'csv'

namespace :app do
  desc "TODO"
  task :init_products => :environment do
    name = []
    
    (1..18).each do |v|
      file_name = "#{v}.csv"
      csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', 'product', file_name))
      ## save to database
      csv.each do |i|
        
        i[4] =~ /(L?T?|\d{3})\/(\d+R)(.+)/i
        tyre = $1
        aspect_ratio = $2
        diameter = $3
        
        @product = Product.create({:tyre => tyre, 
                        :aspect_ratio => aspect_ratio, 
                        :diameter => diameter,
                        :name => i[0],
                        :image_url => i[1],
                        :description => i[2],
                        :url => i[3] })
           
        ## 如果为空，则匹配不成功， 手动添加
        name << i[4] if(@product.tyre.blank?)
        puts "#{@product.id} => #{i[4]} #{tyre} = #{aspect_ratio} = #{diameter}"          
      end

      open('saved_items', 'w') do |file|
        name.each do |n|
          file << "product_id: #{@product.id}, #{file_name}--#{name}\n"
        end
      end
      puts "====== #{file_name} END ========"
    end
  end # end init_products
  
  ## 更新描述和图片
  task :init_store => :environment do
    
    file_name = "store.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.each do |item|
      Store.create({rank: item[0],
                    sale_dist: item[1],
                    provice: item[2],
                    city: item[3],
                    dist: item[4],
                    asr: item[5],
                    dsr: item[6],
                    retail_code: item[7],
                    shop_name: item[8],
                    shop_type: item[13]})
    end
    
  end

end
