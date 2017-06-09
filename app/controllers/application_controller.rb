class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_price(order)
    price = 0
    order.items.each do |item|
      # product = Product.find_by_name_chin(item.product)
      price += item.price*item.quantity
    end
    price
  end
end
