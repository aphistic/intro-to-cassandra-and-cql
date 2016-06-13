CREATE TABLE company (
  company_id INT,
  name VARCHAR,
  PRIMARY KEY (company_id)
);
INSERT INTO company (company_id, name) VALUES (1, 'ShoreTel');
INSERT INTO company (company_id, name) VALUES (2, 'Erik''s Company');

CREATE TABLE employee (
  company_id INT,
  employee_id INT,
  first_name VARCHAR,
  last_name VARCHAR,
  PRIMARY KEY ((company_id), employee_id)
);
INSERT INTO employee (company_id, employee_id, first_name, last_name) VALUES (1, 1, 'John', 'Doe');
INSERT INTO employee (company_id, employee_id, first_name, last_name) VALUES (1, 2, 'Jane', 'Doe');
INSERT INTO employee (company_id, employee_id, first_name, last_name) VALUES (2, 3, 'Erik', 'Davidson');
INSERT INTO employee (company_id, employee_id, first_name, last_name) VALUES (2, 4, 'Joe', 'Cool');

-- Returns all the employees for "Erik's Company"
SELECT * FROM employee WHERE company_id = 2;
