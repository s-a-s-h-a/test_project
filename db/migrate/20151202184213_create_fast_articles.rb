class CreateFastArticles < ActiveRecord::Migration
  def change
    create_table :fast_articles do |t|
      t.string :name
      t.text :content
      t.text :short_description
      t.belongs_to :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
