class User < ApplicationRecord
  belongs_to :broker, optional: true

  has_secure_password

  validates_confirmation_of :name, :username, :password
  validates :username, uniqueness: true
  validates :password, length: { in: 6..15 }, on: :create
  #validate :password_match
  # validates :password,
  #         # you only need presence on create
  #         :presence => { :on => :create },
  #         # allow_nil for length (presence will handle it on create)
  #         :length   => { :minimum => 3, :allow_nil => true },
  #         # and use confirmation to ensure they always match
  #         :confirmation => true

  # def password_match
  #   byebug
  #   if password != password_confirmation
  #     errors.add(:password, "and Password Confirmation must match")
  #   end
  # end


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
