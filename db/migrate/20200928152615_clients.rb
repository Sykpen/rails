# frozen_string_literal: true

class Clients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :email
      t.string :password
      t.integer :address

      t.timestamps
    end
  end
end
