# encoding: utf-8
class StaticController < ApplicationController

  def index
    @infos = Refinery::Infos::Info.recent
  end


end