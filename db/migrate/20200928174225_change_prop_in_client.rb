# frozen_string_literal: true

class ChangePropInClient < ActiveRecord::Migration[6.0]
  def up
    change_column :clients, :address, :text
  end

  def down
    change_column :clients, :address, :integer
  end
end
