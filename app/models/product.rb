class Product < ApplicationRecord

  validates :name_chin, :name_eng, :price, presence: true
end
