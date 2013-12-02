class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :isbn
      t.string :author
      t.decimal :price
      t.integer :genre_id

      t.timestamps
    end
  end
end
