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

  scenario 'account creation' do
    visit '/accounts/sign_up'
    fill_in 'account[username]', with: 'testname'
    fill_in 'account[first_name]', with: 'test'
    fill_in 'account[last_name]', with: 'name'
    fill_in 'account[email]', with: 'test@test.com'
    fill_in 'account[password]', with: '123456'
    fill_in 'account[password_confirmation]', with: '123456'
    click_button 'Sign up'
    expect(Account.count).to eq(1)
    expect(Account.first.username).to eq('testname')
    expect(Account.first.first_name).to eq('test')
    expect(Account.first.last_name).to eq('name')
    expect(Account.first.email).to eq('test@test.com')
  end

  scenario 'account creation notification' do
    visit '/accounts/sign_up'
    fill_in 'account[username]', with: 'testname'
    fill_in 'account[first_name]', with: 'test'
    fill_in 'account[last_name]', with: 'name'
    fill_in 'account[email]', with: 'test@test.com'
    fill_in 'account[password]', with: '123456'
    fill_in 'account[password_confirmation]', with: '123456'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
