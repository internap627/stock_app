class Broker < ApplicationRecord
  belongs_to :company
  has_many :users
  has_many :portfolios
  has_many :stocks, through: :portfolios

  def average
    stocks = []
    pe_ratio = 0
    arr = self.stocks.map {|s|
    stocks.push(StockQuote::Stock.quote(s.symbol))
    }
    stocks.each {|s|
      pe_ratio += s.pe_ratio
    }
    pe_ratio.round/self.stocks.length
  end

end
