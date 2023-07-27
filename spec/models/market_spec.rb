require 'rails_helper'

RSpec.describe Market, type: :model do
  describe 'validations' do 
    it 'geocodes market upon validation' do
      market = Market.new(longitude: 12.34, latitude: 56.78)
      expect(market).to receive(:geocode)
      expect(market.valid?).to be true
    end
  end

  describe 'class methods' do 
    describe 'benefits' do 
      before(:each) do 
        create(:market, fnap: nil)
        create(:market, snap_option: nil)
        create(:market, fnap: nil, snap_option: nil)
        create(:market, fnap: nil, snap_option: nil)
        create(:market, snap_option: 'accepts')
        create(:market, snap_option: 'accepts', fnap: 'accepts')
      end

      it '::accepts_benefits' do 
        result = Market.accepts_benefits
        expect(result.count).to eq(4) 
      end

      it '::snap_available' do 
        result = Market.snap_available
        expect(result.count).to eq(3)
      end

      it '::fnap_available' do 
        result = Market.fnap_available
        expect(result.count).to eq(3)
      end
    end

    describe 'proximity' do 
    it '::closest_markets' do 
      create(:market, address: "501 Foster Street, Durham, North Carolina 27701")
      create(:market, address: "7350 Pine Creek Road, Colorado Springs, Colorado 80919")
      create(:market, address: "2441 Foothill Blvd., Rock Springs, WY, 82901")
      create(:market, address: "3939 Granger Road, Medina, OH, USA")
      result = Market.closest_markets([-104.8970453, 40.7893642], 100)
      require 'pry'; binding.pry
    end
  end
  end
end
