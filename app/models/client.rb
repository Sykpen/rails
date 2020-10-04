# frozen_string_literal: true

class Client < ApplicationRecord
  validates :email, length: { minimum: 4 }
  validates :password, presence: true

  def calculate_bonus(client, params)
    bonus_persent = 10
    return updated_params = { balance: client[:balance], bonus: client[:bonus] } if params[:balance].to_i <= 0

    updated_balance = client[:balance] += params[:balance].to_i
    updated_bonus = client[:bonus] += (params[:balance].to_i / bonus_persent).round
    updated_params = { balance: updated_balance, bonus: updated_bonus }
  end
end
