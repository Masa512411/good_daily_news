require 'news-api'

class FetchNewsService
	def call
		news_api = News.new(ENV['NEWS_API_KEY'])
		@news = news_api.get_top_headlines(country: :jp, pageSize: 40)
		@news.each do |news|
			result = CreateArticle.run(
				title: news.title,
				url: news.url,
				author: news.author,
				description: news.description,
				publishedAt: news.publishedAt,
				urlToImage: news.urlToImage,
			)
		end
	end
end
