require 'pg'
require './lib/user'
require 'database_helper'

describe 'Create method' do
  it 'can add a user to database' do
  user = User.create(first_name: "aysha", last_name: "babur", email_address: "ayshababur@hotmail.com", password: "seaside")
  persisted_data = persisted_data(id: user.id)
  
  expect(user).to be_a User
  expect(user.id).to eq persisted_data['id']
  expect(user.first_name).to eq 'aysha'
  expect(user.last_name).to eq 'babur'
  expect(user.email_address).to eq 'ayshababur@hotmail.com'
  expect(user.password).to eq 'seaside'
  end
end
