class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all.order(id: :asc)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path, notice: "Product created successfully."
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to products_path, notice: "Product updated successfully."
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product deleted successfully."
  end

  private

  def product_params
    params.require(:product).permit(:title, :brand, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end