CREATE TABLE census (
  state VARCHAR,
  city VARCHAR,
  area INT,
  section INT,
  voters INT,
  PRIMARY KEY ((state, city), area, section)
);
INSERT INTO census (state, city, area, section, voters) VALUES ('WI', 'Milwaukee', 1, 2, 25000);
INSERT INTO census (state, city, area, section, voters) VALUES ('WI', 'Milwaukee', 2, 2, 50000);
INSERT INTO census (state, city, area, section, voters) VALUES ('NY', 'New York', 3, 1, 100000);
INSERT INTO census (state, city, area, section, voters) VALUES ('MN', 'Minneapolis', 2, 1, 35000);

-- Invalid, missing 'city' from partition key
SELECT * FROM census WHERE state = 'WI';

-- Returns 2 rows
SELECT * FROM census WHERE state = 'WI' AND city = 'Milwaukee';

-- Invalid, must include 'area'.  The parts of a primary key must be included in order.
-- Since 'area' comes before 'section' in the primary key it must be included if 'section' is included
SELECT * FROM census WHERE state = 'WI' AND city = 'Milwaukee' AND section = 2;

-- Returns 1 row
SELECT * FROM census WHERE state = 'WI' AND city = 'Milwaukee' AND area = 1 AND section = 2;
