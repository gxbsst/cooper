# encoding: utf-8
class MappingKeyword

  attr_accessor :paterns, :infos

  def initialize
    @paterns = ::YAML.load_file(Rails.root.join('config', 'match_keywords.yml'))
    @infos = ::Refinery::Infos::Info.all
  end

  def run
       paterns.each do |patern| 
        infos.each do |info|
        replace(info, patern)
        end 
      end 
  end

  def replace(info, patern)
      content = info.content
      patern['patern'].each do |p| 
       if (content.downcase.include? p.downcase) then
           info.content = content.sub(/#{p}/i, "<a href=#{patern['url']}>#{p} </a>")
           info.save
           # match_result << {:id => info.id, :content => p}
           break
       end
      end
  end
end
