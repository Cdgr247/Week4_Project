INSERT INTO inventory(
    -- inventory_id SERIAL PRIMARY KEY, increments on own
    car_year,
    car_make
) VALUES (
    2022,
    'Honda'
),
(
    2012,
    'Hyndai'
);

INSERT INTO repair(
    -- repair_id, SERIAL PRIMARY KEY, increments on own
    repair_type
) VALUES (
    'Full Tune Up'
),
(
    'New Tires'
);

INSERT INTO sale(
    -- sale_id SERIAL PRIMARY KEY, increments on own
    sale_date
) VALUES (
    'January 8 01:25:04 2024 PST'
),
(
    'May 3 04:15:12 2024 PST'
);

INSERT INTO customer(
    -- customer_id SERIAL PRIMARY KEY, increments on own 
    customer_first_name,
    customer_last_name
) VALUES (
    'Cali',
    'Grey'
),
(
    'Destiny',
    'Bostick'
);

INSERT INTO employee(
    -- employee_id SERIAL PRIMARY KEY, increments on own
    sale_id,
    repair_id,
    employee_first_name,
    employee_last_name
    
) VALUES (
    1,
    1,
    'Darius',
    'Jahlil'
),
(
    2,
    2,
    'Darius',
    'Jahlil'
);

INSERT INTO invoice(
    -- invoice_id SERIAL PRIMARY KEY, increments on own 
    inventory_id,
    employee_id,
    customer_id,
    amount,
    invoice_date
    
) VALUES (
    1,
    1,
    1,
    1000,
    'January 8 04:05:06 2019 PST'

),
(
    2,
    1,
    2,
    5000,
    'May 3 06:03:02 2024 PST'
);