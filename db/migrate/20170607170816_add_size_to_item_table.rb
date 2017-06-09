class AddSizeToItemTable < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :size, :string
  end
end
