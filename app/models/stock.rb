class Stock < ApplicationRecord
  has_many :portfolios
  has_many :brokers, through: :portfolios

  def roe
    stock = stocks.push(StockQuote::Stock.quote(self.symbol))
    stock.pe_ratio
  end

end
