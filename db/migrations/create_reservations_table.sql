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


	 CREATE TABLE reservations(
	 id SERIAL PRIMARY KEY,
	 owner_id numeric,
	 --requester_id numeric,
	 r_status VARCHAR(60),
	 description VARCHAR(100),
	 check_in_date DATE NOT NULL DEFAULT CURRENT_DATE,
	 check_out_date DATE NOT NULL DEFAULT CURRENT_DATE,
	 -- r_duration numeric NOT NULL,
	 --t_price numeric CHECK(t_price > 0) NOT NULL
	 );



-- CREATE TABLE reservations(
-- id SERIAL PRIMARY KEY,
-- owner_id INT,
-- requester_id INT,
-- r_status VARCHAR(60),
-- description VARCHAR(100),
-- check_in_date DATE,
-- check_out_date DATE,
-- r_duration INT,
-- t_price INT
-- );
