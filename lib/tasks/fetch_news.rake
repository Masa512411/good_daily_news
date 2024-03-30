namespace :fetch_news do
  desc 'ニュース記事の取得'
  task FetchNews: :environment do
    FetchNewsService.new.call
  end
end
