class Admin::ProductsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :require_is_admin

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all.order("position ASC")
  end

  def new
    @product = Product.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def update
    @product = Product.find(params[:id])
    @product.category_id = params[:category_id]
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  def publish
    @product = Product.find(params[:id])
    @product.publish!
    redirect_to :back
  end

  def hide
    @product = Product.find(params[:id])
    @product.hide!
    redirect_to :back
  end

  def move_up
      @product = Product.find(params[:id])
      @product.move_higher
      redirect_to :back
    end

  def move_down
    @product = Product.find(params[:id])
    @product.move_lower
    redirect_to :back
   end



  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :quantity, :is_hidden, :image, :category_id)
  end
end
