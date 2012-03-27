namespace :app do
  desc "TODO"
  task :init_products => :environment do
    require 'csv'
    (1..13).each do |v|
      file = "product_#{v}.csv"
      csv = CSV.read(Rails.root.join('lib', 'tasks', 'data', file))
      
      ## save to database
      csv.each do |i|
        
        i[0] =~ /(L?T?|\d{3})\/(\d+R)(*+)/i
        tyre = $1
        aspect_ratio = $2
        diameter = $3
        Product.create({:tyre => tyre, :aspect_ratio => aspect_ratio, :diameter => diameter })
      end
    end
  end

end
