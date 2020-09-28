# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render json: { products: Product.all }
  end

  private def product_params
    params.permit(:title, :titleEN, :price, :amount, :img_url)
  end
end
