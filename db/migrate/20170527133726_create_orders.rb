class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.string :receiver
      t.string :phone
      t.string :method
      t.date   :pickup_date
      t.time   :pickup_time
      t.string :address
      t.integer :fee
      t.integer :lala_fee
      t.text   :note

      t.timestamps
    end
  end
end
