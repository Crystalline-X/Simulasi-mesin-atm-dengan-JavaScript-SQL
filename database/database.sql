-- Active: 1753230862841@@127.0.0.1@3306@atm

-- database account dan transaksi

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET TIME_ZONE = "+00.00";

create table `accounts` (
    `id` int(11)  not null,
    `name` varchar(255) not null,
    `pin` varchar(4) not null,
    `balance` decimal(10,2) default 0.00,
    `created_at` timestamp not null default current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

insert into `accounts` (`id`, `name`, `pin`, `balance`, `created_at`) VALUES
(8, 'er', '1212', 100000.00, '2025-07-19 03:22:08'),
(9, 'lang', '1212', 5000.00, '2025-07-19 03:22:54'),
(10, 'ga', '1321', 95000.00, '2025-07-20 02:06:11');





create table `transactions` (
    `id` int(11)  not null,
    `account_id` int(11)  default null,
    `type` enum('deposit', 'withdraw', 'transfer_in', 'transfer_out') default null,
    `amount` decimal(15,2) default null,
    `target_id` int(11) default null,
    `created_at` timestamp not null default current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

insert into `transactions` (`id`, `account_id`, `type`, `amount`, `target_id`, `created_at` ) values
(1, 8, 'deposit', 10000.00, NULL, '2025-07-19 03:29:02'),
(2, 8, 'withdraw', 10000.00, NULL, '2025-07-19 03:29:47'),
(3, 8, 'deposit', 1000.00, NULL, '2025-07-19 03:30:05'),
(4, 8, 'transfer_out', 1000.00, 9, '2025-07-19 03:30:27'),
(5, 9, 'transfer_in', 1000.00, 8, '2025-07-19 03:30:27'),
(6, 9, 'withdraw', 1000.00, NULL, '2025-07-19 03:31:07'),
(7, 8, 'deposit', 1000.00, NULL, '2025-07-19 03:43:58'),
(8, 8, 'transfer_out', 1000.00, 8, '2025-07-19 03:44:20'),
(9, 8, 'transfer_in', 1000.00, 8, '2025-07-19 03:44:20'),
(10, 8, 'transfer_out', 1000.00, 9, '2025-07-19 03:48:49'),
(11, 9, 'transfer_in', 1000.00, 8, '2025-07-19 03:48:49'),
(12, 9, 'withdraw', 1000.00, NULL, '2025-07-19 03:49:14'),
(13, 10, 'deposit', 500000.00, NULL, '2025-07-20 02:08:56'),
(14, 10, 'withdraw', 300000.00, NULL, '2025-07-20 02:09:42'),
(15, 10, 'transfer_out', 100000.00, 8, '2025-07-20 02:10:27'),
(16, 8, 'transfer_in', 100000.00, 10, '2025-07-20 02:10:27'),
(17, 10, 'transfer_out', 5000.00, 9, '2025-07-22 15:38:34'),
(18, 9, 'transfer_in', 5000.00, 10, '2025-07-22 15:38:34'),
(19, 8, 'transfer_out', 20000.00, 9, '2025-07-25 15:35:44'),
(20, 9, 'transfer_in', 20000.00, 8, '2025-07-25 15:35:44');






alter table `accounts`
 add primary key (`id`);

alter table `transactions`
 add primary key (`id`),
 add key `account_id` (`account_id`),
 add key `target_id` (`target_id`);

alter table `accounts`
 modify `id` int(11) not null auto_increment, auto_increment = 10;

alter table `transactions`
 modify `id` int(11) not null auto_increment, auto_increment = 19;

alter table `transactions`
 add constraint `transactions_ibfk_1` foreign key (`account_id`) references `accounts` (`id`),
 add constraint `transactions_ibfk_2` foreign key (`target_id`) references `accounts` (`id`);
commit;
