CREATE VIEW `items_sell_view`  AS
  SELECT
    items.`name`,
    items.`color`,
    items.`code`,
    items.`manufacture`,
    items.`classification`,
    items.`note`,
    items_sell.`quantity`,
    items_sell.`created_at` AS sold_at
  FROM `items_sell` AS items_sell
    INNER JOIN `items_sell_detail` ON items_sell.`id` = items_sell_detail.`sell_id`
    INNER JOIN `items` AS items ON items.`id` = items_sell_detail.`item_id` ;