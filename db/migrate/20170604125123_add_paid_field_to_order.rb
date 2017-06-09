class AddPaidFieldToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :paid, :integer
  end
end
