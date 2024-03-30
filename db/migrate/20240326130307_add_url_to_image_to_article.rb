class AddUrlToImageToArticle < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :url_to_image, :string
  end
end
