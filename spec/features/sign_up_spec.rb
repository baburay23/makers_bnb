require 'pg'
require 'test_helper'

feature 'User should sign up' do
  scenario 'User needs to fill in ' do
  sign_up('aysha', 'babur', 'ayshababur@hotmail', 'seaside')
  expect(page).to have_button('log in')
  end
end
