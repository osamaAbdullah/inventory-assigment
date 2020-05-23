
CREATE TABLE `sessions` (
  `id` INT(11) UNSIGNED NOT NULL,
  `user_id` BIGINT(20) UNSIGNED NOT NULL,
  `token` int(32) UNSIGNED NOT NULL,
  `serial` int(32) UNSIGNED NOT NULL,
  `date` VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_user_id_foreign` (`user_id`);

ALTER TABLE `sessions`
  MODIFY `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sessions`
  ADD CONSTRAINT `session_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE ON DELETE CASCADE ;
