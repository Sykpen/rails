# frozen_string_literal: true

class ChangePropInClient < ActiveRecord::Migration[6.0]
  def change
    change_column :clients, :address, :text
  end
end
