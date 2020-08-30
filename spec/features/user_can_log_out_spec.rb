require 'rails_helper'

RSpec.feature 'User log out' do
  scenario 'newly registered has log out link' do
    sign_up
    expect(page).to have_link('Log out')
  end
  scenario 'log out link visible only when signed in' do
    visit '/'
    expect(page).to_not have_link('Log out')
  end
end
