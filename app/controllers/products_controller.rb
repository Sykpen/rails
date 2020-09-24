class ProductsController < ApplicationController
    def index
      render json: { products: Product.all }
    end

    def update
      @product = Product.find(params[:id])
      @product.update(product_params)
      render json: {update: @product}
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      render json: {deleted_product: @product}
    end

    def create
      @product = Product.create(product_params)
      render json: {new_product: @product}
    end

    private def product_params
      params.require(:product).permit(:title, :titleEN, :price, :amount, :image)
    end
end