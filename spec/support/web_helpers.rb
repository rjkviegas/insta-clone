def sign_up
  visit '/accounts/sign_up'
    fill_in 'account[username]', with: 'testname'
    fill_in 'account[first_name]', with: 'test'
    fill_in 'account[last_name]', with: 'name'
    fill_in 'account[email]', with: 'test@test.com'
    fill_in 'account[password]', with: '123456'
    fill_in 'account[password_confirmation]', with: '123456'
    click_button 'Sign up'
end