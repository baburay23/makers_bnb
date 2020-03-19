CREATE TABLE reservations(
id SERIAL PRIMARY KEY,
owner_id numeric,
requester_id numeric,
r_status VARCHAR(60),
description VARCHAR(100),
check_in_date DATE NOT NULL DEFAULT CURRENT_DATE,
check_out_date DATE NOT NULL DEFAULT CURRENT_DATE,
r_duration numeric NOT NULL,
t_price numeric CHECK(t_price > 0) NOT NULL
);
