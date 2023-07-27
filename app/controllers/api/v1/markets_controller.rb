class Api::V1::MarketsController < ApplicationController
  def index
    markets = Market.all
    render json: MarketSerializer.format_markets(markets)
  end
end