# encoding: utf-8
require 'csv'

namespace :app do
  desc "TODO"
  task :init_product => :environment do
    name = []
    file_name = "tires.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.each do |i|
      puts i[0]
      product_item = {
          :decorative => i[0].to_s.force_encoding("UTF-8"),
          :name => i[1].to_s.force_encoding("UTF-8"),
          :image_url => i[2].to_s.force_encoding("UTF-8"),
          :description => i[3].to_s.force_encoding("UTF-8"),
          :url => i[4].to_s.force_encoding("UTF-8"),
          :tyre => i[5].to_s.force_encoding("UTF-8"),
          :aspect_ratio => i[6].to_s.force_encoding("UTF-8"),
          :diameter => i[7].to_s.force_encoding("UTF-8")
      }
      @product = Product.create(product_item)
    end
  end



  def parse_cart(string_formate)
    result = []
    string_to_array = string_formate.split(";")
    string_to_array.each do |item|
      item_to_array = item.split("-")
      result << {:brand_name_zh => item_to_array[0], :brand_name_en => item_to_array[0], :car_type_zh => item_to_array[1], :car_type_en => item_to_array[1]}
    end
    result
  end

  desc "Add ICE 100"
  task :init_ice_100 => :environment do
    decorative = 'ICE 100'
    name = 'ICE 100'
    image_url = '/image/ice100_detail_img04.jpg'
    description = 'COOPER ICE 100外观柔美细致，特有超“软”配方科技、“△”底纹以及极限密集刀槽，让您在冰地驰骋游刃有余，尽显王者霸气。'
    url = '/ice100_detail.htm'
    specs = [
      {:tyre => '215', :aspect_ratio => '55', :diameter => '17', :cart => '丰田-雷克萨斯ES350;本田-奥德赛2.4;丰田-锐志3.0V;丰田-凯美瑞;日产-天籁;标致-407' },
      {:tyre => '225', :aspect_ratio => '50', :diameter => '17', :cart => '奥迪-A6;奥迪-A4L/A5;宝马-5系;丰田-雷克萨斯GS' },
      {:tyre => '205', :aspect_ratio => '55', :diameter => '16', :cart => '大众-途安1.8T/2.0;大众-高尔夫;丰田-卡罗拉1.8/2.0;大众-昊锐1.8T/2.0;本田-思域;大众-领驭1.8T/2.0'},
      {:tyre => '215', :aspect_ratio => '60', :diameter => '16', :cart => '丰田-皇冠2.5;丰田-凯美瑞;丰田-锐志;本田-雅阁;丰田-雷克萨斯ES330;本田-奥德赛' },
      {:tyre => '195', :aspect_ratio => '65', :diameter => '15', :cart => '马自达-3;大众-帕萨特领驭;大众-宝来;福特-福克斯;标致-307;大众-高尔夫;大众-朗逸;大众-明锐;大众-途安' },
      {:tyre => '195', :aspect_ratio => '60', :diameter => '15', :cart => '丰田-花冠;起亚-赛拉图;莲花-L3;众泰-梦迪博朗;比亚迪-F3;吉利-远景;力帆-620;东风-风神S30' }
    ]


    # update product

    specs.each do |s| 
      product = {
        :decorative => decorative, 
        :name => name, 
        :image_url => image_url, 
        :description => description, 
        :url => url,
        :tyre => s[:tyre],
        :aspect_ratio => s[:aspect_ratio],
        :diameter => s[:diameter]
      }
      new_product = Product.new product
      if new_product.valid?
        new_product.save
      else
        puts "#{s[:tyre]} - #{s[:aspect_ratio]} - #{s[:diameter]} not save.....\n"
      end
    end

    # update brand
    specs.each do |s|
      cars = parse_cart(s[:cart])
      cars.each do |cart|
        brand =  {
          :name => name,
          :url => url,
          :description => description,
          :image_url => image_url,
          :brand_name_zh => cart[:brand_name_zh],
          :brand_name_en => Brand.find_by_brand_name_zh(cart[:brand_name_zh]).try(:brand_name_en) || cart[:brand_name_zh],
          :car_type_zh => cart[:car_type_zh],
          :car_type_en => Brand.find_by_car_type_zh(cart[:car_type_zh]).try(:car_type_en) ||  cart[:car_type_zh]
        }

        new_brand = Brand.new(brand)

        if new_brand.valid?
          new_brand.save
        else
          puts "#{s[:cart]} -- #{name} not save....."
        end
      end
    end

  end

  task :init_product_C7 => :environment do
    name = []
    file_name = "tires_C7.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.each do |i|
      puts i[0]
      product_item = {
          :decorative => i[0].to_s.force_encoding("UTF-8"),
          :name => i[1].to_s.force_encoding("UTF-8"),
          :image_url => i[2].to_s.force_encoding("UTF-8"),
          :description => i[3].to_s.force_encoding("UTF-8"),
          :url => i[4].to_s.force_encoding("UTF-8"),
          :tyre => i[5].to_s.force_encoding("UTF-8"),
          :aspect_ratio => i[6].to_s.force_encoding("UTF-8"),
          :diameter => i[7].to_s.force_encoding("UTF-8")
      }
      @product = Product.create(product_item)
    end
    # (1..18).each do |v|
    #   file_name = "#{v}.csv"
    #   csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', 'product', file_name))
    #   ## save to database
    #   csv.each do |i|
    #     
    #     i[4] =~ /(L?T?|\d{3})\/(\d+R)(.+)/i
    #     tyre = $1
    #     aspect_ratio = $2
    #     diameter = $3
    #     
    #     @product = Product.create({:tyre => tyre, 
    #                     :aspect_ratio => aspect_ratio, 
    #                     :diameter => diameter,
    #                     :name => i[0],
    #                     :image_url => i[1],
    #                     :description => i[2],
    #                     :url => i[3] })
    #        
    #     ## 如果为空，则匹配不成功， 手动添加
    #     name << i[4] if(@product.tyre.blank?)
    #     puts "#{@product.id} => #{i[4]} #{tyre} = #{aspect_ratio} = #{diameter}"          
    #   end
    # 
    #   open('saved_items', 'w') do |file|
    #     name.each do |n|
    #       file << "product_id: #{@product.id}, #{file_name}--#{name}\n"
    #     end
    #   end
    #   puts "====== #{file_name} END ========"
    # end
  end # end init_products

  def shop_type(line)
    shop_types = {"CPC" => "嘉车坊",
                  "CTCC" => "替换中心",
                  "CSSPLUS" => "店招店",
                  "CSS+" => "店招店",
                  "CSS" => "招牌店",
                  "INDEPENDENT" => "独立授权店",
                  "OTHERS" => "其他"}
    return  "OTHERS" if line[4].blank? || !(shop_types.invert.has_key? line[4])
    shop_types.invert[line[4]]
  end

  ## 更新描述和图片
  task :init_store => :environment do
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE stores")
    file_name = "store-10-29.csv"
    csv = CSV.open(Rails.root.join('lib', 'tasks', 'data', file_name), :headers => true)
    csv.each do |item|

      begin
        item[0] = ' ' if item[0].blank?
        item[1] = ' ' if item[1].blank?
        item[2] = ' ' if item[2].nil?
        item[3] = ' ' if item[3].nil?
        address = item[3] == '0' ? address = "" : item[3].to_s.force_encoding("UTF-8")
        full_address = ''
        full_address << item[0] << item[1] << item[3]
        Store.create({
                         provice: item[0].to_s.force_encoding("UTF-8"),
                         city: item[1].to_s.force_encoding("UTF-8"),
                         dist: item[2].to_s.force_encoding("UTF-8"),
                         shop_name: item[2].to_s.force_encoding("UTF-8"),
                         address: address,
                         full_address: full_address.force_encoding("UTF-8"),
                         shop_type: shop_type(item)
                     })
      rescue Exception => e
        puts item
      end
    end
  end

  ## 更新店地址经纬度
  task :update_store_tuge => :environment do
    #Store.all.each do |r|
    (1..26).collect{|i| i*100}.each do |id|
      Store.where("id > #{id} AND id < #{(id+200)}").each do |r|
        tuge = Geocoder.coordinates("#{r.provice}#{r.city}#{r.address}") unless r.address.blank?
        if r.longitude.blank?
          r.update_attributes(:longitude => tuge[0], :latitude => tuge[1]) unless tuge.blank?
        end
      end
      sleep 5
    end
  end

  task :init_video => :environment do
    yaml = YAML::load(open(Rails.root.join('lib', 'tasks', 'data', 'video.yml')))
    yaml.each do |key, value|
      value["name"] = key
      Video.find_or_create_by_name(value)
    end
  end

  ## Init Regions Of stores
  task :init_region => :environment do
    file_name = "store.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    ranks = []
    csv.each do |item|
      item[2].to_s.force_encoding("UTF-8")
      item[3].to_s.force_encoding("UTF-8")
      item[4].to_s.force_encoding("UTF-8")

      @provice = Region.where(["region_name = ? AND region_type=1", item[2]]).first
      @provice ||= Region.new({:parent_id => 0, :region_name => item[2], :region_type => 1})

      # @region = Region.new({:parent_id => 0, :region_name => item[2], :region_type => 1 })
      @city = Region.where(["region_name = ? AND region_type=2", item[3]]).first
      @city ||= @provice.children.build({:region_name => item[3], :region_type => 2})

      @dist = Region.where(["region_name = ? AND region_type=3", item[4]]).first
      @dist ||= @city.children.build({:region_name => item[4], :region_type => 3})

      @provice.save
      ranks << item[0] if item[2].blank? || item[3].blank? || item[4].blank?
    end

    open("error_region_items", "w") do |file|
      ranks.each { |r| file << "#{r} \n" }
    end

  end


  ## init_brand
  task :init_brand => :environment do
    file_name = "brand.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.each do |item|
      puts item[4]
      Brand.create({
                       name: item[4],
                       url: item[7],
                       description: item[6],
                       image_url: item[5],
                       brand_name_zh: item[1],
                       brand_name_en: item[0].delete("\n"),
                       car_type_zh: item[2],
                       car_type_en: item[3]
                   })
    end
  end

  ## init_brand_C7
  task :init_brand_C7 => :environment do
    file_name = "brand_C7.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.each do |item|
      puts item[4]
      Brand.create({
                       name: item[4],
                       url: item[7],
                       description: item[6],
                       image_url: item[5],
                       brand_name_zh: item[1],
                       brand_name_en: item[0].delete("\n"),
                       car_type_zh: item[2],
                       car_type_en: item[3]
                   })
    end
  end

  ## upload history news

  task :init_history_news => :environment do
    file_name = "history_news.csv"
    csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file_name))
    csv.shift

    csv.each_with_index do |i, index|
      i[14] = i[14] ? "<p align='center'><img src='#{i[14].gsub("..", "")}' /></p>" + i[9] : ""
      puts i[9].to_s.force_encoding("UTF-8")
      info = {
          :title => i[1].to_s.force_encoding("UTF-8"),
          :content => i[14].to_s.force_encoding("UTF-8"),
          :created_at => Time.parse(i[11]),
          :position => index,
          :visit_count => i[10].to_s.force_encoding("UTF-8").to_i
      }
      Refinery::Infos::Info.create(info)
    end
    # @infos = Refinery::Infos::Info.recent

  end

  task :create_sitemap_xml => :environment do
    page = Nokogiri::HTML(open("http://localhost:3000/sitemap"))
    @date = Time.now.strftime("%Y-%m-%d")
    host = 'http://www.coopertire.com.cn'
    @urls = page.css('.content li a').collect do |a|
      if a['href'].include? '/'
        {:url => "#{host}#{a['href']}", :priority => a['data-priority'] || '0.8'}
      else
        {:url => "#{host}/#{a['href']}", :priority => a['data-priority'] || '0.8'}
      end
    end

    info_urls = Refinery::Infos::Info.all.collect do |info|
      {:url => "#{host}/infos/#{info.created_at.year}/#{info.id}", :priority => '0.5' }
    end

    @urls << info_urls
    @urls.flatten!

    template_file = Rails.root.join('app/views/static/sitemap.xml.erb')
    template = ERB.new File.new(template_file).read
    result = template.result(binding)

    sitemap_xml = Rails.root.join('public/sitemap.xml')
    File.open(sitemap_xml, 'w') {|file| file.write result}

  end
  
  # 再公路 => 在公路
  task :update_atr => :environment do
    Product.where(:decorative => "Discoverer\n ATR").each do |p|
      p.description = 'Discoverer ATR 在公路驾驶和越野行车的需求之间达成了完美的平衡。独特的内部结构，形成了均匀的接地面，带来均匀磨耗。'
      p.save!
    end
    Brand.where(:name => "Discoverer ATR").each do |p|
      p.description = 'Discoverer ATR 在公路驾驶和越野行车的需求之间达成了完美的平衡。独特的内部结构，形成了均匀的接地面，带来均匀磨耗。'
      p.save!
    end

  end

  # 更新新闻的关键词加URL
  task :add_key_url => :environment do 
    require Rails.root.join('lib/mapping_keyword.rb')
    m = MappingKeyword.new
    m.run
  end

end
