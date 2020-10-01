class AddColumnsToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :name, :string
    add_column :clients, :nick_name, :string
    add_column :clients, :balance, :integer
    add_column :clients, :bonus, :integer
  end
end
