require 'rails_helper'

describe 'application receives post request to create read', :type => :request do
  it 'a read is created when post sent to /api/v1/reads' do
    post '/api/v1/reads', :params => {read: {url: 'http://www.google.com'}}


      object = JSON.parse(response.body)

      expect(object['url']).to eq('http://www.google.com')
      expect(Read.count).to eq(1)
  end
end
