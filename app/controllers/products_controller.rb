class ProductsController < ApplicationController
  
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
