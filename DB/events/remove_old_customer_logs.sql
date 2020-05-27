DELIMITER $$

CREATE EVENT `remove_old_customer_logs`
  ON SCHEDULE
  EVERY 3 MONTH
DO
    BEGIN
        DELETE FROM `customer_logs` WHERE `occurred_at` < NOW() - INTERVAL 3 MONTH;
    END$$
DELIMITER ;