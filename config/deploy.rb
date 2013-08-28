# encoding: utf-8
require "bundler/capistrano"

set :deploy_via, :remote_cache

set :application, "coopertire.com.cn"

set :default_environment, {
'LANG' => 'en_US.UTF-8'
}

set :branch, "deploy"
set :branch, "sem"
set :repository,  "git@git.sidways.com:ruby/outsourcing/cooper.git"

if ENV['RAILS_ENV'] =='cancer'
  set :default_environment, {
      'PATH' => "/home/deployer/.rbenv/versions/1.9.3-p448/bin/:$PATH"
  }
  server "cancer", :web, :app, :db, primary: true
  set :user, "deployer"
  set :deploy_to, "/home/#{user}/apps/test/#{application}"
elsif ENV['RAILS_ENV'] =='sem'
  set :default_environment, {
      'PATH' => "/home/deployer/.rbenv/versions/1.9.3-p448/bin/:$PATH"
  }
  server "jh_web3", :web, :app, :db, primary: true
  set :user, "deployer"
  set :deploy_to, "/home/#{user}/apps/#{application}"
elsif ENV['RAILS_ENV'] =='development'
  server "192.168.11.31", :web, :app, :db, primary: true
  set :repository,  "git@git.sidways.lab:ruby/outsourcing/cooper"
  set :user, "rails"
  set :deploy_to, "/srv/rails/cooper"
end

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

# role :web, "aries.sidways.lab"                          # Your HTTP server, Apache/etc
# role :app, "aries.sidways.lab"                          # This may be the same as your `Web` server
# role :db,  "aries.sidways.lab", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"


set :use_sudo, false


default_run_options[:pty] = true
ssh_options[:forward_agent] = true

#after "deploy", "deploy:cleanup" # keep only the last 5 releases


# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :setup_config, roles: :app do
    # sudo "ln -nfs #{current_path}/config/apache.conf /etc/apache2/sites-available/#{application}"
    run "mkdir -p #{shared_path}/config"
    put File.read("config/database.yml.mysql"), "#{shared_path}/config/database.yml"
    puts "Now edit the config files in #{shared_path}."
    puts "请设置tmp 和 public文件为可写"
    # photos
    # run "mkdir -p /srv/rails/coopertire_stuff/system"
  end

  after "deploy:setup", "deploy:setup_config"

  task :symlink_config, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/system #{release_path}/public/system"
  end
  after "deploy:finalize_update", "deploy:symlink_config"


  task :change_tmp do
    # run("chmod -R 777 #{current_path}/tmp")
  end
  after "deploy:finalize_update", "deploy:change_tmp"

end
