CREATE TRIGGER `decrease_capital_when_expense_created`
  AFTER INSERT ON `expenses`
  FOR EACH ROW
  UPDATE `capital` SET `money_amount` = (`money_amount` - NEW.amount);
