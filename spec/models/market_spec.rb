require 'rails_helper'

RSpec.describe Market, type: :model do
  
  describe 'validations' do 
    it 'geocodes market upon validation' do
      market = Market.new(longitude: 12.34, latitude: 56.78)
      expect(market).to receive(:geocode)
      expect(market.valid?).to be true
    end
  end
end
