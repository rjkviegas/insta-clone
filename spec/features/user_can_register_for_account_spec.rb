require 'rails_helper'

RSpec.feature 'User registration' do
  
  scenario 'link on homepage' do
    visit '/'
    expect(page).to have_link('Sign up')
  end

end
