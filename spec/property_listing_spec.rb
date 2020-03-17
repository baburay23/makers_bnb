require './lib/property_listing'
require 'pg'


describe 'Property_list' do
  let(:property_list) { Property.new }
  it 'can list all properties' do
    setup_test_database
    add_row_to_test_database
    test1 = property_list.display_all
  expect(test1).to include("property_1")
  end
end
