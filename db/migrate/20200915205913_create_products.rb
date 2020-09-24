# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :titleEN
      t.integer :price
      t.integer :amount
      t.string :image

      t.timestamps
    end
  end
end
