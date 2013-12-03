class AddImageFilenameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :image_filename, :string
  end
end
