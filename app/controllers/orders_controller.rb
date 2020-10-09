# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    render json: { orders: Order.all }
  end

  def create
    client = Client.find(params[:client_id])
    if client
      updated_balance = client.make_payment(client, params[:total_order_price])
      client.update({ balance: updated_balance })
    end
    @order = Order.create(order_params)
    render json: { order: @order }
  end

  private def order_params
    params.permit(:client_id, :total_order_price, products_hash: %i[title titleEN price amount image totalAmountToOrder totalPriceForOneProduct])
  end
end
