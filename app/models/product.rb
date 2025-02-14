# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
end
