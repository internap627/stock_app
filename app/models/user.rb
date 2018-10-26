class User < ApplicationRecord
  belongs_to :broker, optional: true

  has_secure_password

  validates_confirmation_of :name, :username
  validates :username, uniqueness: true
  validates :password, length: { in: 6..15 }, on: :create
  validate :password_val


  def password_val
    password_confirmation != password
  end

  def users_shares
    self.broker.stocks.map { |s| s.name}
  end

  def user_stock_hash
    array = []
    symbols = self.broker.stocks.map {|s| s.symbol}.join(",")
    api_call = StockQuote::Stock.quote(symbols)
    api_call.map {|c|
      arr = []
      arr << c.company_name
      arr << c.change_percent
      array << arr }
    array
  end


end
