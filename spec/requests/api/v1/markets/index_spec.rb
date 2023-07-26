require 'rails_helper'

RSpec.describe 'Market Index', type: :feature do
  before(:each) do

  end

  describe 'endpoint' do
    it 'returns all markets' do 
      get api_v1_markets_path

      expect(response).to be_successful
    end
  end
end