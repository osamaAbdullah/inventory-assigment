CREATE TRIGGER `decrease_capital_when_income_deleted`
  AFTER DELETE ON `incomes`
  FOR EACH ROW
  UPDATE `capital` SET `money_amount` = (`money_amount` - OLD.amount);
