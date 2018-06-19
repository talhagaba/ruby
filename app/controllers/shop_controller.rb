class ShopController < ApplicationController

 before_action :authenticate_user!

layout 'header'

  def index
            @products =Product.sorted
  end

  def contact
  end

  def about
  end

  def login
  end

  def checkout

  end

  def cart
  end

  def product
  end

  def productDetail
  end
end
