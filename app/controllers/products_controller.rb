class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @size = ['六吋', '八吋', 'n/a']
  end

  def create
    @product = Product.create(product_params)
    @product.size = params[:product][:size]

    if @product.save
      redirect_to root_path
    else
      @size = ['六吋', '八吋', 'n/a']
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @size = ['六吋', '八吋', 'n/a']
  end

  def update
    @product = Product.find(params[:id])
    @product.size = params[:product][:size]

    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name_chin, :name_eng, :price, :size)
  end
end
