class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :abbr
      t.decimal :tax_rate

      t.timestamps
    end
  end
end
