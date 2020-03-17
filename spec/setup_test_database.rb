require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'fya_hr_test')
  connection.exec("TRUNCATE property_listing;")
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'fya_hr_test')
  connection.exec("INSERT INTO property_listing (pl_name,pl_description,pl_price_night) values ('property_1','seaside_view', 75);")
end
