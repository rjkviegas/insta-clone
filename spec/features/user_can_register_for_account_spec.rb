require 'rails_helper'

RSpec.feature 'User registration' do
  
  scenario 'link on homepage' do
    visit '/'
    expect(page).to have_link('Sign up')
    click_link('Sign up')
    expect(current_path).to eq('/accounts/sign_up')
    expect(page).to have_content('Register for an account below')
  end

  scenario 'account sign up form' do
    visit '/accounts/sign_up'
    expect(page).to have_field('account[username]')
    expect(page).to have_field('account[first_name]')
    expect(page).to have_field('account[last_name]')
    expect(page).to have_field('account[email]')
    expect(page).to have_field('account[password]')
    expect(page).to have_field('account[password_confirmation]')
  end

end
