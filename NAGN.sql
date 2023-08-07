-- mysql -u root < NAGN.sql

DROP DATABASE IF EXISTS NAGN;
CREATE DATABASE NAGN;

USE NAGN;

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `username` varchar(255),
  `password` varchar(255),
  `email` varchar(255) UNIQUE,
  `isAdmin` BOOLEAN,
  `created_at` timestamp
);

CREATE TABLE `game_list` (
  `id` integer PRIMARY KEY,
  `user_id` int
);

CREATE TABLE `game_list_entries` (
  `id` integer PRIMARY KEY,
  `game_list_id` int,
  `game_id` int,
  `status` varchar(255)
);

CREATE TABLE `follows` (
  `id` int PRIMARY KEY,
  `id_sender` int,
  `id_recipient` int,
  `status` int,
  `created_at` timestamp
);

CREATE TABLE `messages` (
  `id` int PRIMARY KEY,
  `id_sender` int,
  `id_recipient` int,
  `message` varchar(255),
  `time_sent` timestamp,
  `read_status` BOOLEAN
);

CREATE TABLE `reviews` (
  `id` integer PRIMARY KEY,
  `user_id` integer,
  `game_id` integer,
  `rating` integer,
  `review_text` varchar(255),
  `posted_time` timestamp
);

CREATE TABLE `posts` (
  `id` int PRIMARY KEY,
  `title` varchar(255),
  `body` text COMMENT 'Content of the post',
  `user_id` int,
  `status` varchar(255),
  `created_at` timestamp
);

ALTER TABLE `follows` ADD FOREIGN KEY (`id_sender`) REFERENCES `users` (`id`);

ALTER TABLE `follows` ADD FOREIGN KEY (`id_recipient`) REFERENCES `users` (`id`);

ALTER TABLE `messages` ADD FOREIGN KEY (`id_sender`) REFERENCES `users` (`id`);

ALTER TABLE `messages` ADD FOREIGN KEY (`id_recipient`) REFERENCES `users` (`id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `game_list` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `game_list_entries` ADD FOREIGN KEY (`game_list_id`) REFERENCES `game_list` (`id`);
