class Item < ApplicationRecord
  belongs_to :order

  validates :price, :quantity, :size, :product, presence: true
end
