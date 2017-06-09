class Order < ApplicationRecord
  has_many :items

  validates :receiver, presence: true
end
