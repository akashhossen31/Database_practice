-- Active: 1731632520587@@127.0.0.1@3306@inventory
CREATE TABLE `users`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstName` VARCHAR (50) NOT NULL,
    `lastName` VARCHAR (50) NOT NULL,
    `email` VARCHAR (100) NOT NULL,
    `mobile` VARCHAR (20) NOT NULL,
    `password` VARCHAR (50) NOT NULL,
    `otp` VARCHAR (50) NOT NULL,
    `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
    `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
) 



CREATE TABLE `categories`(
       `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
       `name` VARCHAR (100) NOT NULL,
       `user_id` BIGINT(20) UNSIGNED NOT NULL,
       `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
       `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
       FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)

CREATE TABLE `customers`(
        `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `name` VARCHAR (100) NOT NULL,
        `email` VARCHAR (100) NOT NULL,
       `mobile` VARCHAR (20) NOT NULL,
       `user_id` BIGINT(20) UNSIGNED NOT NULL,
       `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
       `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
       FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)


CREATE TABLE `products`(
        `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `name` VARCHAR (100) NOT NULL,
       `price` VARCHAR (20) NOT NULL,
       `unit` VARCHAR (50) NOT NULL,
       `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
       `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
        `user_id` BIGINT(20) UNSIGNED NOT NULL,
        `category_id` BIGINT (20) UNSIGNED NOT NULL,
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)

CREATE TABLE `invoices`(
        `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `total` VARCHAR (100) NOT NULL,
       `discount` VARCHAR (20) NOT NULL,
       `vat` VARCHAR (50) NOT NULL,
       `payable` VARCHAR (50) NOT NULL,
       `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
       `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
        `user_id` BIGINT(20) UNSIGNED NOT NULL,
        `coustomer_id` BIGINT (20) UNSIGNED NOT NULL,
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (`coustomer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)




CREATE TABLE `invoice_products`(
        `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `qty` VARCHAR (50) NOT NULL,
       `sale_price` VARCHAR (20) NOT NULL,
       `create_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP(),
       `update_at` TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
        `user_id` BIGINT(20) UNSIGNED NOT NULL,
        `product_id` BIGINT (20) UNSIGNED NOT NULL,
        `invoice_id` BIGINT (20) UNSIGNED NOT NULL,
        FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT
)