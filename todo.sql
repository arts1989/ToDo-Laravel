-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 20 2023 г., 11:05
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `todo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2023_01_17_061802_create_projects_table', 2),
(4, '2023_01_17_073927_create_tasks_table', 3),
(8, '2023_01_18_063115_create_task_status_table', 4),
(9, '2023_01_18_064447_add_ref_task_to_status', 5),
(10, '2023_01_19_073706_add_role_column_to_user', 6),
(11, '2023_01_19_094842_add_softdelete_to_user', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'asdsad////', '2023-01-17 06:49:51', '2023-01-17 08:51:51', '2023-01-17 08:51:51'),
(2, 1, 'adsdsadad', '2023-01-17 06:59:43', '2023-01-17 08:51:53', '2023-01-17 08:51:53'),
(3, 1, 'zzzzzzz11111222zzzzzzz', '2023-01-17 07:30:57', '2023-01-17 10:36:10', '2023-01-17 10:36:10'),
(4, 2, 'aaaaaaaaaz', '2023-01-17 08:13:44', '2023-01-17 08:17:19', NULL),
(5, 2, 'bbbbb11111', '2023-01-17 08:13:47', '2023-01-17 10:04:22', NULL),
(6, 1, 'zxcxzczxc111', '2023-01-17 10:36:13', '2023-01-17 13:37:40', '2023-01-17 13:37:40'),
(7, 1, 'to doseeee', '2023-01-17 11:08:40', '2023-01-18 18:24:53', NULL),
(8, 2, 'aaaaa', '2023-01-17 15:16:07', '2023-01-17 15:16:07', NULL),
(9, 3, 'adasdsad11', '2023-01-17 15:30:07', '2023-01-17 17:05:10', '2023-01-17 17:05:10'),
(10, 1, 'adsadsad', '2023-01-17 17:05:31', '2023-01-17 17:05:31', NULL),
(11, 1, '90900909090', '2023-01-18 05:11:09', '2023-01-18 05:11:09', NULL),
(12, 3, 'dsadasd', '2023-01-19 07:20:50', '2023-01-19 07:20:50', NULL),
(13, 4, 'уборка квартиры', '2023-01-19 08:37:19', '2023-01-19 08:37:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `project_id`, `title`, `created_at`, `updated_at`, `deleted_at`, `status_id`) VALUES
(1, 1, 10, 'zxzczxczx', '2023-01-18 05:03:52', '2023-01-18 05:03:52', NULL, 1),
(2, 1, 11, 'фывфывфв', '2023-01-18 05:11:26', '2023-01-18 05:11:26', NULL, 1),
(3, 1, 11, 'asdsadsadsad', '2023-01-18 06:16:37', '2023-01-18 06:16:44', NULL, 5),
(4, 1, 7, 'sasasas', '2023-01-19 04:23:46', '2023-01-19 04:23:46', NULL, 1),
(5, 3, 12, 'dasdsadsad', '2023-01-19 07:20:53', '2023-01-19 07:20:53', NULL, 1),
(6, 4, 13, 'протереть стены', '2023-01-19 08:37:25', '2023-01-19 08:37:25', NULL, 1),
(7, 4, 13, 'помыть пол', '2023-01-19 08:37:30', '2023-01-19 08:37:30', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_statuses`
--

INSERT INTO `task_statuses` (`id`, `title`) VALUES
(1, 'в ожидании'),
(2, 'в разработке'),
(3, 'на тестировании'),
(4, 'на проверке'),
(5, 'выполнено');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `deleted_at`) VALUES
(1, 'user1', 'user1@user1.com', '$2y$10$CeJai2zEwx6K5lxsBWzg.Ot.rUlgmxOcEZUtPEr3KuZcrdl7VywkW', 'nokyHYHyUHRzG0kzWEH6riE5IoGBysBg7tvYiLU305KOpjv1l6UikanRUs59', '2023-01-17 05:22:19', '2023-01-17 05:22:19', NULL, NULL),
(2, 'user2', 'user2@user2.com', '$2y$10$zQ99SBmcZ6XsBcXv15lG4ejfEXE6mpcMwqtZw5Jr168jI3Ev/HijK', 'p2HlZDmvJKQLsIGugJtBzgeocl7SmA8ah5O6MR9UfN0Lj3YOJfISDuXayyzs', '2023-01-17 08:13:40', '2023-01-19 07:30:38', NULL, '2023-01-19 07:30:38'),
(3, 'admin', 'admin@admin.com', '$2y$10$.4KltSNfuIrU10FfiB36ye1D3NINsX.5Q2L42vnjdtNJc4LOlNEvG', 'v9PpJ07WPVvTnN58tg4dXjlOoVcRR6zLTkYSf893AQXrFh6HH4XUpJyPWOAl', '2023-01-17 13:46:36', '2023-01-17 13:46:36', 'admin', NULL),
(4, 'user', 'user3@user3.com', '$2y$10$485MfumrHVOp7NRLiZaite9Ig8iXW2WNTjElgACnhBMSY2YekTdvq', '47ra8xYEbe6uwIRXKOwSTzeLgENzvFFV2YlqSSdKKFCu5ua68oUHWIf4sTq9', '2023-01-19 08:37:09', '2023-01-19 08:37:09', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_status_id_foreign` (`status_id`);

--
-- Индексы таблицы `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `task_statuses` (`id`),
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
