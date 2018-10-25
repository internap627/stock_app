class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
    @stock_obj = StockQuote::Stock.quote(@stock.symbol)
  end

end
