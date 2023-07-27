require 'rails_helper'

RSpec.describe 'Markets', type: :feature do
  before(:each) do
    # 5.times do 
    #   Market.create!({
    #     name: "Underground Atlanta Farmers Market ",
    #     address: "50 Upper Alabama Street, Atlanta, GA, USA",
    #     site: "Privately owned street on historic property in downtown Atlanta",
    #     fnap: "Accept EBT at a central location;;",
    #     snap_option: "Accept EBT at a central location;;",
    #     accepted_payment: "Cash;Debit card/Credit card;", 
    #     longitude: -84.3918612,
    #     latitude: -33.7532152
    #   })
    # end
  end

  describe 'find by long, lat & radius' do
    # it 'hits the endpoint' do 
    #   query_params = {
    #     longitude: -104.0000000, 
    #     latitude: 42.0000000, 
    #     radius: 50
    #   }

    #   get '/api/v1/markets/search', params: query_params

    #   expect(response).to be_successful
    # end
  end
end