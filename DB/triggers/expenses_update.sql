DELIMITER $$

CREATE TRIGGER `update_capital_when_expense_updated`
  AFTER UPDATE
ON `expenses` FOR EACH ROW
# {FOLLOWS|PRECEDES} existing_trigger_name
BEGIN
  UPDATE capital SET money_amount = (money_amount + OLD.amount);
  UPDATE `capital` SET `money_amount` = (`money_amount` - NEW.amount);
END$$

DELIMITER ;