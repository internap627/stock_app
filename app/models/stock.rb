class Stock < ApplicationRecord
  has_many :portfolios
  has_many :brokers, through: :portfolios
end
