CREATE TABLE `users` (
  `id`         INT(11) UNSIGNED           NOT NULL,
  `role_id`    INT(11) UNSIGNED,
  `name`       VARCHAR(255)
               COLLATE utf8mb4_unicode_ci NOT NULL,
  `username`   VARCHAR(255)
               COLLATE utf8mb4_unicode_ci NOT NULL,
  `password`   VARCHAR(255)
               COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP                  NULL DEFAULT NULL,
  `updated_at` TIMESTAMP                  NULL DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

ALTER TABLE `users`
  MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

# ALTER TABLE `users`
#   ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

INSERT INTO `users` (`role_id`, `name`, `username`, `password`, `created_at`, `updated_at`)
VALUES ('1', 'osama', 'osama_akre', '$2y$10$eob8uBe/fbUVr0x9WXsviOVdIC6NF3m/./KS0MqvDbEubn3XnE.bS', '2020-05-19 10:54:21', '2020-05-17 10:54:21');

