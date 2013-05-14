module Refinery
  module Infos
    class InfosController < ::ApplicationController

      before_filter :find_all_infos
      before_filter :find_page


      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @info in the line below:

        @histories = years
        present(@page)
      end

      def show
        @histories = years
        @info = Info.find(params[:id])
        @info.visit_count ||= 0
        @info.update_attribute(:visit_count, @info.visit_count + 1)        
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @info in the line below:
        present(@page)
      end

      protected

      def find_all_infos
        params[:page] ||= 1
        year = params[:year].try(:to_i) || Time.now.year
        @infos = Info.for_year(year).paginate(:page => params[:page], :per_page => 20)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/infos").first
      end

      def years
        Refinery::Infos::Info.group("year(created_at)").count.except(Time.now.year)
      end

    end
  end
end
