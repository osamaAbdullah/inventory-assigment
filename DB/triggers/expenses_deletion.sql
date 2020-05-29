CREATE TRIGGER `increase_capital_when_expense_deleted`
  AFTER DELETE ON `expenses`
  FOR EACH ROW
  UPDATE `capital` SET `money_amount` = (`money_amount` + OLD.amount);
