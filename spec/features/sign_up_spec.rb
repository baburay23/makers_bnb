require 'pg'

feature 'User should sign up' do
  scenario 'User needs to fill in ' do
    visit('/sign_up')
    fill_in('first_name', with: 'aysha')
    fill_in('last_name', with: 'babur')
    fill_in('email_address', with: 'ayshababur@hotmail.com')
    fill_in('password', with: 'seaside')
    fill_in('confirm_password', with: 'seaside')
    click_button('sign up')
    expect(page).to have_button('log in')
  end
end
