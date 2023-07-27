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
    before(:each) do 
      create(:market, fnap: 'accepts')
      create(:market, fnap: nil)
      create(:market, snap_option: nil)
      create(:market, fnap: nil, snap_option: nil)
      create(:market, fnap: nil, snap_option: nil)
      create(:market, snap_option: 'accepts')
      create(:market, snap_option: 'accepts', fnap: 'accepts')
      create(:market, snap_option: 'accepts', fnap: 'accepts')
      create_list(:market, 5)
    end

    it '#accepts_any_benefits' do 
      require 'pry'; binding.pry
    end

    it '#accepts_snap_benefits' do 
      
    end
  end
end
