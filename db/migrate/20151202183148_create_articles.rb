class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.has_attached_file :avatar
      t.string :url_fragment
      t.belongs_to :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
