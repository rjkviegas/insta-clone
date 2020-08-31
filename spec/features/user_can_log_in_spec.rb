require 'rails_helper'

RSpec.feature 'Logging in' do
  scenario 'user logs in' do
    sign_up
    click_link('Log Out')
    click_link('Log in')
    fill_in 'account[email]', with: 'test@test.com'
    fill_in 'account[password]', with: '123456'
    click_button('Log in')
    expect(page).to have_content('Log in successful.')
    expect(current_path).to eq('/dashboard')
  end
end
