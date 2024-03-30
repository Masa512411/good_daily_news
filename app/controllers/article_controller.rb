class ArticleController < ApplicationController
  def index
    # FetchNewsService.new.call
    # news = Article.order(published_at: :DESC)
    @articles = Article.page(params[:page]).per(20).order('published_at DESC')
  end

  def show
  end
end
