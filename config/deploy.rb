set :application, "Cooper"
set :repository,  "git@git.sidways.lab:ruby/outsourcing/cooper"
set :deploy_to, "/srv/rails/cooper"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "aries.sidways.lab"                          # Your HTTP server, Apache/etc
role :app, "aries.sidways.lab"                          # This may be the same as your `Web` server
role :db,  "aries.sidways.lab", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

set :user, "rails"

set :use_sudo, false

set :branch, "master"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
 
 
 # 设置数据库
 namespace :deploy do
   task :config_database do 
     run "#{try_sudo} cp #{File.join(current_path,'config','database.yml.mysql')}  #{File.join(current_path,'config','database.yml')}"
   end
 end
 
 namespace :deploy do
   task :bundle_install do 
      run("cd #{deploy_to}/current; bundle install --path=vendor/gems")
   end
 end
 
 
 namespace :deploy do
   task :migration do 
      run("cd #{deploy_to}/current; rake db:migrate ")
   end
 end