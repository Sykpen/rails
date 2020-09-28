# frozen_string_literal: true

module Admins
  class ProductsController < ApplicationController
    def index
      render json: { products: Product.all }
    end

    def update
      @product = Product.find(params[:id])
      @product.update(product_params)
      render json: { update: @product}
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      render json: {deleted_product: @product}
    end

    def create
      product_hash = product_params
      product_hash[:image] = product_hash.delete :img_url
      @product = Product.create(product_hash)
      render json: {new_product: @product}
    end

    private def product_params
      params.permit(:title, :titleEN, :price, :amount, :img_url)
    end
  end
end
