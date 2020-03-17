require 'pg'
require './lib/Fya_hr'

describe 'Create method' do
  it 'can add a user to database' do
  user = Fya_hr.create("aysha", "babur","ayshababur@hotmail.com","seaside")


  end
end
