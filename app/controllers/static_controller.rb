# encoding: utf-8
class StaticController < ApplicationController

  caches_page :index, :cache_path => lambda {|controller| controller.params}

  def index
    @title = '固铂轮胎官网 - 美国汽车轮胎品牌领导者,全球越野轮胎大师'
    @meta_keywords = '固铂轮胎,cooper轮胎,固铂轮胎官网,汽车轮胎品牌,越野轮胎'
    @meta_description = '全球越野轮胎大师固铂轮胎中国官方网站。固铂Cooper轮胎，美国领导汽车轮胎品牌，旗下有固铂，固铂成山等多个轮胎品牌，全球十大轮胎制造企业之一，美资第二大上市轮胎公司。无固铂，不越野！'

    @infos = Refinery::Infos::Info.recent.limit(4).order("created_at DESC, position ASC")
  end

  def sitemap
    @title = '网站地图 - 固铂轮胎中国官网'
    @histories = years

    @suv = [
        {:name => 'DISCOVERER STT', :url => '/stt_detail.htm'},
        {:name => 'DISCOVERER STMAXX', :url => '/stmaxx_detail.htm'},
        {:name => 'DISCOVERER AT3', :url => '/at3_detail.htm'},
        {:name => 'DISCOVERER ATR', :url => 'atr_detail.htm'},
        {:name => 'DISCOVERER ATS (SUV& LT)', :url => '/ats_detail.htm'},
        {:name => 'DISCOVERER HTS', :url => '/hts_detail.htm'},
        {:name => 'ZEON XST<span class="sx_a">A</span>', :url => '/xst-a_detail.htm'},
        {:name => 'ZEON 4XS', :url => '/4xs_detail.htm'}
    ]
    @saloon_car =  [
        {:name => 'ZEON C7', :url => '/c7_detail.html'},
        {:name => '驭行-ZEON RS3-A', :url => '/rs3-a_detail.htm'},
        {:name => '驭动-ZEON RS3-S', :url => '/rs3-s_detail.htm'},
        {:name => 'ZEON ASP', :url => '/asp_detail.htm'},
        {:name => 'LIFELINER GLS', :url => '/gls_detail.htm'},
        {:name => 'ZEON ATP', :url => '/atp_detail.htm'}
    ]
    @winter = [
        {:name => 'ICE 100', :url => '/ice100_detail.htm'},
        {:name => 'Cooper Discoverer M+S', :url => '/m_s_detail.htm'},
        {:name => 'Cooper Weather Master SA2', :url => '/sa2_detail.htm'},
        {:name => 'Cooper Weather Master ST3', :url => '/st3_detail.htm'},
        {:name => 'Cooper Weather Master ST2', :url => '/st2_detail.htm'},
        {:name => 'Avon Ice Touring', :url => '/ait_detail.htm'}
    ]
  end

  ## 更新到最新版本
  def git_pull
   # path = "/aries-lv-01/aries_srv/rails/cooper/current/"
  #  cmd = CommandBuilder::new("cd")
    #path = "/srv/rails/cooper/current/"
  #  cmd << path
  #  cmd.execute!
    #Dir.chdir(path)
    # system "git pull origin deploy"

    exec " cd /srv/rails/cooper/current/ && git pull origin  deploy"  
   # git = CommandBuilder::new("git")
   # git << "pull"
   # git << "origin"
   # git << "deploy"
    
   # git.execute!
    render :text => "a", :layout => false
  end

  def flash
    render :layout => false
  end

  protected

  def years
    Refinery::Infos::Info.group("year(created_at)").count
  end
  
end
