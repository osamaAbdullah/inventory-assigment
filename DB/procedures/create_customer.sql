DELIMITER ##

CREATE PROCEDURE create_customer
  (
    customer_name VARCHAR(255),
    customer_email VARCHAR(255),
    customer_phone VARCHAR(33),
    customer_address VARCHAR(255),
    customer_note VARCHAR(255)
  )
  BEGIN

    INSERT INTO `customers`
    (type, name, email, phone_number, address, note, created_at, updated_at)
    VALUES
      ('customer', customer_name, customer_email, customer_phone, customer_address, customer_note, NOW(), NOW());

    INSERT INTO `customer_logs`
    (log, occurred_at) VALUES ('new customer has been created', NOW());

  END ##;