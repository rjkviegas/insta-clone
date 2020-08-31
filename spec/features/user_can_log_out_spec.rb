require 'rails_helper'

RSpec.feature 'User log out' do
  scenario 'log out link not visible when not signed in' do
    visit '/'
    expect(page).to_not have_link('Log out')
  end
  scenario 'log out link visible for newly registered user' do
    sign_up
    expect(page).to have_link('Log Out')
  end
  scenario 'log out link logs current user out' do
    sign_up
    click_link('Log Out')
    expect(page).to have_content('Log out successful.')
  end
end
