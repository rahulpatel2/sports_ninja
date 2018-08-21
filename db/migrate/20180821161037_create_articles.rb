class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :source, foreign_key: { to_table: :sources, name: "articles_source_id_fkey" },
        index: { name: "articles_source_id_index" }, null: false, comment: "Reference to the Source"
      t.string :title, null: false, comment: "Title of Article"
      t.string :author, comment: "Author of Article"
      t.string :url, comment: "URL of Article"
      t.string :image_url, comment: "Image URL of Article"
      t.string :description, comment: "Description of Article"
      t.timestamps
    end
  end
end
