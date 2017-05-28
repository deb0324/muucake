class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|

      t.string  :product_id
      t.integer :price
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
