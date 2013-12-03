class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :amount
      t.boolean :paid
      t.boolean :shipped
      t.integer :book_id

      t.timestamps
    end
  end
end
