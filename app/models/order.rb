# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :client
  serialize :products_hash

  def make_payment(client, total_order_price)
    return 'You have no money. Male a deposit and try again' if client[:balance] < total_order_price

    client[:balance] = client[:balance] - total_order_price
  end
end
