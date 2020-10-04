# frozen_string_literal: true

class AddColumnsToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :first_name, :string
    add_column :clients, :last_name, :string
    add_column :clients, :nick_name, :string
    add_column :clients, :balance, :integer
    add_column :clients, :bonus, :integer
  end
end
