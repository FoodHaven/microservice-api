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
      addresses = [
        "501 Foster Street, Durham, North Carolina 27701", 
        "15500 County Road 6, Plymouth, Minnesota 55447", 
        "7350 Pine Creek Road, Colorado Springs, Colorado 80919", 
        "Main Street & Church Street, Granville, NY, USA", 
        "3939 Granger Road, Medina, OH, USA", 
        "2441 Foothill Blvd., Rock Springs, WY, 82901", 
        "50 Upper Alabama Street, Atlanta, GA, USA"
        ]
      10.times do 
        Market.create!({
          name: Faker::Name.first_name, 
          address: addresses.sample, 
          site: Faker::Address.community,  
          description: Faker::Quote.famous_last_words,  
          fnap: Faker::Dessert.flavor, 
          snap_option: Faker::Food.dish, 
          accepted_payment: Faker::Currency.name
        })
      end
      create(:market, fnap: 'accepts')
      create(:market, snap_option: 'accepts')
      create(:market, snap_option: 'accepts', fnap: 'accepts')
      create_list(:market, 5)
    end

    it '#accepts_benefits' do 
require 'pry'; binding.pry
    end
  end
end
