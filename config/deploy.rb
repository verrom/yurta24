# config valid only for current version of Capistrano
lock '3.4.0'

application = 'yurta24'
login = 'yurta24'
$user = 'hosting_' + login
$server = 'calcium.locum.ru'
rvm_ruby_string = '2.1.5p273'
deploy_to = "/home/#{ $user }/projects/#{ application }"
unicorn_conf = "/etc/unicorn/#{ application }.#{ login }.rb"
unicorn_pid = "/var/run/unicorn/#{ $user }/#{ application }.#{ login }.pid"
unicorn_start_cmd = "(cd #{ deploy_to }/current; rvm use #{ rvm_ruby_string } do bundle exec unicorn_rails -Dc #{ unicorn_conf })"

set :application, application 
#set :repo_url, "ssh://#{ $user }@#{ $server }/home/#{ $user }/git/#{ application }.git"
set :repo_url, "https://github.com/verrom/yurta24.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, deploy_to

# Default value for :scm is :git


# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
 set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
  set :default_env, { path: "/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/local/rvm/bin" }
			
# Default value for keep_releases is 5
# set :keep_releases, 5


namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
