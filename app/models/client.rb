# frozen_string_literal: true

class Client < ApplicationRecord
  validates :email, length: { minimum: 4 }
  validates :password, presence: true

  def calculate_bonus(balance)
    bonus = (balance / 10).round
  end
end
