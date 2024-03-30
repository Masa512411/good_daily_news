class ChangeDataPublishedAtToArticle < ActiveRecord::Migration[7.1]
  def change
    change_column :articles, :published_at, :string
  end
end
