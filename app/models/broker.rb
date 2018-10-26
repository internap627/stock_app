class Broker < ApplicationRecord
  belongs_to :company
  has_many :users
  has_many :portfolios
  has_many :stocks, through: :portfolios

  def average
    stocks = []
    pe_ratio = 0
    symbols = self.stocks.map {|s| s.symbol}.join(",")
    api_call = stocks.push(StockQuote::Stock.quote(symbols))

    # arr = self.stocks.map {|s|
    # stocks.push(StockQuote::Stock.quote(s.symbol))
    # }
    api_call[0].each {|s|
      pe_ratio += s.pe_ratio
    }
    pe_ratio.round/self.stocks.length
  end

  def self.best
    best = 0
    broker = ""
    Broker.all.each {|b|
      br = b.average
      if br > best
        best = br
        broker = b
      end
    }
    broker
  end

end
