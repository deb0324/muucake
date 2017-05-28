class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.string :name_chin
      t.string :name_eng
      t.integer :price
      
      t.timestamps
    end
  end
end
