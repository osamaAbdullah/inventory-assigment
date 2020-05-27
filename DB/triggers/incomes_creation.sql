CREATE TRIGGER `increase_capital_when_income_created`
  AFTER INSERT ON `incomes`
  FOR EACH ROW
  UPDATE `capital` SET `money_amount` = (`money_amount` + NEW.amount);
