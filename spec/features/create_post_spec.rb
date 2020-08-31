require 'rails_helper'

RSpec.feature 'Creating posts' do
  scenario 'can create a post' do
    sign_up
    click_link 'New Post'
    attach_file('post[image]', "spec/files/images/coffee.jpg")
    fill_in 'post[caption]', with: 'nom nom nom #coffeetime' 
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='coffee.jpg']")
    expect(page).to have_content('Post was created successfully')
  end
  scenario 'alert if post not created' do
    sign_up
    click_link 'New Post'
    fill_in 'post[caption]', with: 'nom nom nom #coffeetime' 
    click_button 'Create Post'
    expect(page).to have_content('Post was not saved!')
  end
end