require 'pg'
require 'test_helper'

feature 'Verify user' do
	scenario 'User does not exsist' do
		login('sasquatch@hotmail.com', 'farts')
    expect(page).to have_content 'This user does not exsist please sign up.'
   end

	scenario 'User password is incorrect' do
	 sign_up('aysha', 'babur', 'ayshababur@hotmail', 'seaside')
   login('ayshababur@hotmail.com', 'mountains')
	 expect(page).to have_content 'Your password is incorrect.'
	 end

 end
