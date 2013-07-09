# encoding: utf-8
module Refinery
  module Jobs
    class JobsController < ::ApplicationController

      before_filter :find_all_jobs
      before_filter :find_page

      def index
        @title = '工作机会 - 固铂轮胎中国官网'
        @meta_keywords = '固铂招聘,工作机会,固铂轮胎'
        @meta_description = '固铂轮胎提供一系列职位，等待您的加入。'
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
      end

      def show
        @job = Job.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
      end

    protected

      def find_all_jobs
        @jobs = Job.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/jobs").first
      end

    end
  end
end

