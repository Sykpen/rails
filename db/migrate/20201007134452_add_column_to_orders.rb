# frozen_string_literal: true

class AddColumnToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :total_order_price, :integer
  end
end
