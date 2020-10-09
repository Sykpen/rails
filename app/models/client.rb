# frozen_string_literal: true

class Client < ApplicationRecord
  BONUS_PERCENT = 10
  validates :email, length: { minimum: 4 }
  validates :password, presence: true

  has_many :orders, dependent: :destroy

  def calculate_bonus(client, params)
    return updated_params = { balance: client[:balance], bonus: client[:bonus] } if params[:balance].to_i <= 0

    updated_balance = client[:balance] += params[:balance].to_i
    updated_bonus = client[:bonus] += (params[:balance].to_i / BONUS_PERCENT).round
    updated_params = { balance: updated_balance, bonus: updated_bonus }
  end

  def make_payment(client, total_order_price)
    return 'You have no money. Male a deposit and try again' if client[:balance] < total_order_price

    client[:balance] = client[:balance] - total_order_price
  end
end
