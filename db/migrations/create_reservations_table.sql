CREATE TABLE reservations (
	 r_id SERIAL PRIMARY KEY, 
	 r_status VARCHAR(10), 
	 owner_id INT, 
	 buyer_id INT, 
	 check_in_date VARCHAR(20), 
	 check_out_date VARCHAR(20), 
	 duration INT, 
	 total_price INT, 
	 description VARCHAR(150) );