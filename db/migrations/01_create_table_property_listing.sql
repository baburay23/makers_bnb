CREATE TABLE property_listing(
pl_id serial PRIMARY KEY,
owner_id numeric,
pl_name VARCHAR(100) UNIQUE NOT NULL,
pl_description VARCHAR(250) NOT NULL,
pl_price_night numeric CHECK(pl_price_night > 0) NOT NULL
);
