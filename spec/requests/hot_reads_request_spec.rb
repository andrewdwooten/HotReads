require 'rails_helper'

describe 'application receives get request for hot reads', :type => :request do
  it 'current_hot_reads are returned with url and count' do
    Read.create(url: 'www.yahoo.com')
    Read.create(url: 'www.yahoo.com')
    Read.create(url: 'www.google.com')
    Read.create(url: 'www.netflix.com')
    Read.create(url: 'www.netflix.com')
    Read.create(url: 'www.netflix.com')
    get '/api/v1/hot_reads'


      hot_reads = JSON.parse(response.body)

      expect(hot_reads["www.netflix.com"]).to eq(3)
      expect(hot_reads["www.yahoo.com"]).to eq(2)
      expect(hot_reads["www.google.com"]).to eq(1)
  end
end
