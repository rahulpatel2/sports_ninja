class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.string :name, null: false, comment: "News Source Name"
      t.string :rss_url, null: false, comment: "Url of RSS"
      t.timestamps
    end
  end
end
