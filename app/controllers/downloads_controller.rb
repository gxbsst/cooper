# encoding: utf-8
class DownloadsController < ApplicationController
  # before_filter :authenticate
  http_basic_authenticate_with :name => "test", :password => "test"

  def index
    @files = Refinery::Resource.where("media_type = '新闻通稿'")
    @images = Refinery::Resource.where("media_type = '高清图片'")
    @movies = Refinery::Resource.where("media_type = '视频'")
  end
end