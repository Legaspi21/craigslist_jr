class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.string :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
