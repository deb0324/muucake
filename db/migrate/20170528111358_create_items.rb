class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|

      t.string  :product
      t.integer :price
      t.integer :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
