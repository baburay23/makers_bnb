require './lib/reservations'
require 'pg'

describe 'Reservation' do
  let(:reservation) { Reservation.new("id","description","price_per_night") }
  it 'can make an instances of itself' do
    expect(reservation).to be_a Reservation
  end

  it 'can use the add method' do
    reservation = Reservation.add(id: 33,description: "description",total_price: 400)
    expect(reservation).to be_a Reservation
  end
end
