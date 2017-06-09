class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)

    if @order.save
      redirect_to new_item_path(param: @order.id)
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy

  end

  private
  def order_params
    params.require(:order).permit(:receiver, :phone, :method, :pickup_time, :pickup_date, :address, :fee, :lala_fee, :paid, :note)
  end
end
