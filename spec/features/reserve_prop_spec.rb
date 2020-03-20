require 'pg'
require 'test_helper'

feature 'User can reserve a property' do
	 scenario 'User is verfied' do
		sign_up('aysha', 'babur', 'ayshababur@hotmail', 'seaside')
		login('ayshababur@hotmail', 'seaside')
		visit('/home')
		click_link('Reserve')
    expect(page).to have_content("Reserve a property")
	 end
 end
