# encoding: utf-8
class StaticController < ApplicationController

  def index
    @infos = Refinery::Infos::Info.recent
  end

  ## 更新到最新版本
  def git_pull
    path = Rails.root.to_s
    cmd = CommandBuilder::new("cd")
    cmd << path
    cmd.execute!
    
    git = CommandBuilder::new("git")
    git << "pull"
    git << "origin"
    git << "deploy"
    
    git.execute!
    render :text => git.execute!, :layout => false
  end
  
end