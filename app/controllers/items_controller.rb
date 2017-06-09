class ItemsController < ApplicationController

  def new
    @item = Item.new
    @product_list = Product.all.pluck(:name_chin)
    @order_id = params[:param]
    @size = ['六吋', '八吋', 'n/a']
  end

  def create
    if params[:flag] == "取消"
      redirect_to root_path
    else
      @item = Item.create(item_params)
      order = Order.find(params[:item][:order_id])

      if @item.save
        if params[:flag] == "繼續新增"
          redirect_to new_item_path(param: order.id)
        else
          order.total_price = get_price(order)
          if order.save
            # redirect_to order_path(Order.find(params[:item][:order_id]))
            redirect_to root_path
          end
        end
      else
        render :new
      end
    end
  end

  def edit
    @item = Item.find(params[:id])
    @product_select = @item.product
    @product_list = Product.all.pluck(:name_chin)
    @order_id = @item.order_id
    @orginal_size = @item.size
    @size = ['六吋', '八吋', 'n/a']
  end

  def update
    @item = Item.find(params[:id])
    order = Order.find(@item.order_id)

    if @item.update(item_params)
      order.total_price = get_price(order)
      if order.save
        redirect_to order_path(order)
      end
    else
      render :edit
    end
  end

  private
  def item_params
    params.require(:item).permit(:product, :quantity, :price, :order_id, :size)
  end
end
