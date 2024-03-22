class ArticleController < ApplicationController
  def index
    require 'news-api'

    news_api = News.new(ENV['NEWS_API_KEY'])
    @news = news_api.get_top_headlines(country: :jp)
  end

  def show
  end
end
