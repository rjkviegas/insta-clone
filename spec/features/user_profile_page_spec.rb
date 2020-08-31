require 'rails_helper'

RSpec.feature 'User profile page' do
  scenario 'has account info' do
    sign_up
    click_link('My Profile')
    expect(page).to have_content('Hello test')
    expect(page).to have_content('0 posts')
    expect(page).to have_link('Edit Account Info')
  end
  scenario 'can edit account info' do
    sign_up
    click_link('My Profile')
    click_link('Edit Account Info')
    expect(page).to have_field('account[username]')
    expect(page).to have_field('account[first_name]')
    expect(page).to have_field('account[last_name]')
    expect(page).to have_field('account[email]')
    expect(page).to have_field('account[password]')
    expect(page).to have_field('account[password_confirmation]')
  end
end