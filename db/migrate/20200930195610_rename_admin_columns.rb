# frozen_string_literal: true

class RenameAdminColumns < ActiveRecord::Migration[6.0]
  def up
    rename_column :admins, :nickName, :nick_name
    rename_column :admins, :firstName, :first_name
    rename_column :admins, :lastName, :last_name
  end

  def down
    rename_column :admins, :nick_name, :nickName
    rename_column :admins, :first_name, :firstName
    rename_column :admins, :last_name, :lastName
  end
end
