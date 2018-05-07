DROP TABLE travels;
DROP TABLE cities;
DROP TABLE countries;

CREATE TABLE countries
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
);

CREATE TABLE cities
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  country_id INT4 REFERENCES countries(id) ON DELETE CASCADE
);

CREATE TABLE travel
(
  id SERIAL8 primary key,
  country_id INT4 REFERENCES countries(id) ON DELETE CASCADE
  city_id INT4 REFERENCES cities(id) ON DELETE CASCADE
);
