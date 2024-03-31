require File.expand_path(File.dirname(__FILE__) + '/environment')

set :output, "#{Rails.root}/log/cron_tab.log"

every 10.minutes do #at: '9:00 am' do
  rake "fetch_news:FetchNews"
end
