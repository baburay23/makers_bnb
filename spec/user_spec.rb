require 'pg'
require './lib/user'

describe 'Create method' do
  it 'can add a user to database' do
  user = User.create(first_name: "aysha", last_name: "babur", email_address: "ayshababur@hotmail.com", password: "seaside")
expect

  end
end
