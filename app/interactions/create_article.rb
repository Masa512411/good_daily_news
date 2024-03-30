require "active_interaction"
class CreateArticle < ActiveInteraction::Base
    string :title
    string :url
		string :author
		string :description
		string :publishedAt
		string :urlToImage

	def execute
		if(Article.find_by(url: url).nil?)
			@article = Article.new(
				author: author,
				description: description,
				published_at: publishedAt,
				title: title,
				url: url,
				url_to_image: urlToImage
			)
			if @article.save
				print("Saved ")
			else
				errors.merge!(@article.errors)
			end
		end
	end
end
