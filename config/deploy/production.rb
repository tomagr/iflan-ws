role :app, %w{deploy@iflan.house}
role :web, %w{deploy@iflan.house}
role :db, %w{deploy@iflan.house}

set :deploy_to, '/srv/rails/iflan-ws'

server 'api.iflan.house', user: 'deploy', roles: %w{web app}

set :rails_env, 'production'
set :branch, 'master'

#after 'deploy', 'sitemap:refresh'