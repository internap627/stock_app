class BrokersController < ApplicationController
  def index
    @best_broker = Broker.best
    @brokers = Broker.all
  end

  def show
    @broker = Broker.find(params[:id])
  end
end
