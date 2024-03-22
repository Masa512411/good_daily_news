class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :author
      t.text :description
      t.string :url
      t.string :published_at
      t.string :datetime

      t.timestamps
    end
  end
end
