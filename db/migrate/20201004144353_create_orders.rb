# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :products_hash
      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end
