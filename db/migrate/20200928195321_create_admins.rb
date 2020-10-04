# frozen_string_literal: true

class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :nickName
      t.string :firstName
      t.string :lastName
      t.string :password
    end
  end
end
