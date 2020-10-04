# frozen_string_literal: true

class Client < ApplicationRecord
  validates :email, length: { minimum: 4 }
  validates :password, presence: true

  def calculate_bonus(client, params)
    if params[:balance].to_i <= 0
      return updated_params = { balance: client[:balance], bonus: client[:bonus]}
    end
    updated_balance = client[:balance] += params[:balance].to_i
    updated_bonus = client[:bonus] += (params[:balance].to_i / 10).round
    updated_params = { balance: updated_balance, bonus: updated_bonus}
  end
end
