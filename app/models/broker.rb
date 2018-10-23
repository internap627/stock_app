class Broker < ApplicationRecord
  belongs_to :company
  has_many :users
  has_many :portfolios
  has_many :stocks, through: :portfolios
end
