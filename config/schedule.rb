require File.expand_path(File.dirname(__FILE__) + '/environment')

set :output, "#{Rails.root}/log/cron_tab.log"
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
env :PATH, ENV['PATH']

every 1.minutes do #at: '9:00 am' do
  rake "fetch_news:FetchNews"
end
