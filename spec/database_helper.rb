require 'pg'

def persisted_data(id:)
	connection = PG.connect(dbname: 'fya_hr_test')
	result = connection.query("SELECT * FROM users WHERE id = '#{id}'")
	result.first
end

def reservations_data(r_id:)
	connection = PG.connect(dbname: 'fya_hr_test')
	result = connection.query("SELECT * FROM reservations WHERE r_id = '#{r_id}'")
	result.first
end
