class Api::V1::Markets::SearchController < ApplicationController
  def index
    markets = Market.nearby_markets(coordinates, params[:radius])
    render json: MarketSerializer.new(markets)
  end

  private

  def coordinates
    [params[:latitude], params[:longitude]]
  end
end