require 'rails_helper'

RSpec.describe 'Markets' do
  before(:each) do
    create_list(:market, 10)
  end

  describe 'find by long, lat & radius' do
    it 'hits the endpoint' do 
      query_params = {
        longitude: -104.0000000, 
        latitude: 42.0000000, 
        radius: 50
      }

      get '/api/v1/markets/search', params: query_params

      expect(response).to be_successful
    end
  end
end