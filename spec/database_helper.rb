require 'pg'

def persisted_data(id:)
	connection = PG.connect(dbname: 'fya_hr_test')
	result = connection.query("SELECT * FROM users WHERE id = '#{id}'")
	result.first
end

def reservations_data(id:)
	connection = PG.connect(dbname: 'fya_hr_test')
	result = connection.query("SELECT * FROM reservations WHERE id = '#{id}'")
	result.first
end
