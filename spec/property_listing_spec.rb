require './lib/property_listing'
require 'pg'


describe 'Property_list' do
  it 'can list all properties' do
    setup_test_database
    add_row_to_test_database
    test1 = Property.display_all

    expect(test1.length).to eq 1
    expect(test1.first.pl_name).to eq('property_1')
    expect(test1.first.pl_description).to eq('seaside_view')
    expect(test1.first.pl_price_night).to eq "75"
  end

  it 'returns an array of property objects' do
		expect(Property.display_all.class). to eq Array
	end
end
