require 'rails_helper'

RSpec.describe 'Market Index' do
  
  describe 'endpoint' do
    it 'returns all markets' do 
      create_list(:market, 5)
      get api_v1_markets_path
      expect(response).to be_successful
    end
  end
end