require "bundler/capistrano"

# Add RVM's lib directory to the load path.
#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
#set :bundle_cmd, 'source $HOME/.bash_profile && bundle'
# Load RVM's capistrano plugin.    

#set :rvm_ruby_string, '1.9.2'
#set :rvm_type, :user  # Don't use system-wide RVM
#set :rvm_type, :user


set :deploy_via, :remote_cache

set :application, "Cooper"

#set :default_environment, {
  #'LANG' => 'en_US.UTF-8'
#}

set :branch, "deploy"

if ENV['RAILS_ENV'] =='production'
  require "rvm/capistrano"
  #server "www.coopertire.com.cn", :web, :app, :db, primary: true
  server "jh_web3", :web, :app, :db, primary: true
  set :repository,  "ssh://git@www.sidways.com:20248/ruby/outsourcing/cooper"
 # set :deploy_to, "/srv/rails/coopertire_deploy"
  set :deploy_to, "/srv/rails/coopertire_deploy"
set :user, "root"
elsif ENV['RAILS_ENV'] =='sem'
  server "192.168.11.31", :web, :app, :db, primary: true
  set :branch, "sem"
  set :repository,  "git@git.sidways.lab:ruby/outsourcing/cooper"
  set :user, "rails"
  set :deploy_to, "/srv/rails/cooper-sem"
else
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
   # photos
   run "mkdir -p /srv/rails/coopertire_stuff/system"
 end
 
 after "deploy:setup", "deploy:setup_config"

 task :symlink_config, roles: :app do
   run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
   #   run "ln -nfs #{shared_path}/config/database.yml  /srv/rails/cooper/releases/20121205032322/config/database.yml"
   run "ln -nfs #{shared_path}/system #{release_path}/public/system"
 end
 after "deploy:finalize_update", "deploy:symlink_config"

 task :bundle_install do 
   run("cd #{deploy_to}/current; bundle install --path=vendor/gems")
 end

 task :migration do 
   run("cd #{deploy_to}/current; rake db:migrate ")
 end

 end
 
 
 # 设置数据库
 # namespace :deploy do
 #   task :config_database do 
 #     run "#{try_sudo} cp #{File.join(current_path,'config','database.yml.mysql')}  #{File.join(current_path,'config','database.yml')}"
 #   end
 # end
 
