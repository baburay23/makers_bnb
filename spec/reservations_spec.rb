require './lib/reservations'
require 'pg'

describe 'Reservation' do
  let(:reservation) { Reservation.new }
  it 'can make an instances of itself' do
    expect(reservation).to be_a Reservation
  end
end
