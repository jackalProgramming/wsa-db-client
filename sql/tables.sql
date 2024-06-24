CREATE SCHEMA IF NOT EXISTS wsa;
CREATE table IF NOT EXISTS cities 
(city_id serial primary key, city_name varchar, state varchar, created_at timestamp, updated_at timestamp, deleted_at timestamp);
CREATE table IF NOT EXISTS temperatures (temp_id serial primary key,  temp_city integer NOT null, foreign key(temp_city)  references cities(city_id),
temp_c float, created_at timestamp, updated_at timestamp, deleted_at timestamp);