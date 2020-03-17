require 'pg'

feature 'User should log in' do 
	scenario 'User can log in' do
		visit('/login')
    fill_in('email', with: 'ayshababur@hotmail.com')
    fill_in('password', with: 'seaside')
    click_button('log in')
    expect(page).to have_content 'Hello'
   end
 end
