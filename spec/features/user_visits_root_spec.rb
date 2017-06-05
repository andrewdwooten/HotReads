require 'rails_helper'

feature 'user visits root' do
  scenario 'and sees a heading' do
    visit '/'

    within('h1') do
      expect(page).to have_content('Hot Reads')
    end

    expect(page).to have_selector('.hot-reads-list')
  end
end
