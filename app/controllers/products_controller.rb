class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
        @products =Product.sorted
  end

   def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new({:productName => 'Default'})
   #  @product = current.user.products.build 
  end
 
  def create
    @product= Product.new(product_params)
    #   @product= current.user.products.build(product_params)

    if @product.save
      redirect_to(products_path)
    else
      render('new')
    end

  end

  def edit
    @product = Product.find(params[:id])

   #current.user.products.build 
  end
  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      flash[:notice] ="Product updated successfully......"
      redirect_to(product_path(@product))
    else
      render('edit')
    end
  end

  def delete

    @product = Product.find(params[:id])
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] ="Product '#{@product.productName}' delete successfully......"
    redirect_to(product_path)
  end


  private
  def product_params
    params.required(:product).permit(:productName,:position,:visible)
  end




end
