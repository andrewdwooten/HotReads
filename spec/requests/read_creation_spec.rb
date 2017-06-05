require 'rails_helper'

feature 'application receives post request to create read' do
  scenario 'a read is created when post sent to /api/v1/reads' do
      conn = Faraday.new(:url => 'http://localhost:3000')
      conn.post '/api/v1/reads', {read: {url: 'http://www.google.com'}}

      expect(Read.count).to eq(1)

  end
end
