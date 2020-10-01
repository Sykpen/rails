# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render json: { products: Product.all }
  end
end
