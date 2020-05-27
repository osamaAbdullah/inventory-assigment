CREATE VIEW `items_receive_view`  AS
  SELECT
    items.`name`,
    items.`color`,
    items.`code`,
    items.`manufacture`,
    items.`classification`,
    items.`note`,
    items_receive.`price`,
    items_receive.`delivery_cost`,
    items_receive.`quantity`,
    items_receive.`warranty`,
    items_receive.`production_date`,
    items_receive.`expiration_date`
  FROM `items_receive` AS items_receive
    INNER JOIN `items_receive_detail` ON items_receive.`id` = items_receive_detail.`receive_id`
    INNER JOIN `items` AS items ON items.`id` = items_receive_detail.`item_id` ;