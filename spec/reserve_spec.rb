require './lib/reserve'
require 'database_helper'
require 'pg'

describe Reserve do
  it 'allows a user to reserve a propery' do
  reservations = Reserve.request(check_in_date: "01/01/20", check_out_date: "05/01/20", r_duration: 4)
  reservations_data = reservations_data(r_id: reservations.r_id)

  expect(reservations).to be_a Reserve
  expect(reservations.r_id).to eq reservations_data['r_id']
  expect(reservations.check_in_date).to eq "01/01/20"
  expect(reservations.check_out_date).to eq "05/01/20"
  expect(reservations.r_duration).to eq "4"

  end
end
