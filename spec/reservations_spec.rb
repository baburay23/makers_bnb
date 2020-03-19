require './lib/reservations'
require 'pg'

describe 'Reservation' do
  let(:reservation) { Reservation.new("id","description","price_per_night") }
  it 'can make an instances of itself' do
    expect(reservation).to be_a Reservation
  end

  xit 'can use the add method' do
    expect(Reservation.add(id: "33",description: "description",price_per_night: 400)).to eq ("this should work")
  end
end
