CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    car_year INTEGER,
    car_make VARCHAR
);

CREATE TABLE repair(
    repair_id SERIAL PRIMARY KEY,
    repair_type VARCHAR
);

CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    sale_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_first_name VARCHAR,
    customer_last_name VARCHAR
);

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    sale_id INTEGER,
    repair_id INTEGER,
    employee_first_name VARCHAR,
    employee_last_name VARCHAR,
    FOREIGN KEY (sale_id) REFERENCES sale (sale_id),
    FOREIGN KEY (repair_id) REFERENCES repair (repair_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    inventory_id INTEGER,
    employee_id INTEGER,
    customer_id INTEGER,
    amount NUMERIC (8,2),
    invoice_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (inventory_id) REFERENCES inventory (inventory_id),
    FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);