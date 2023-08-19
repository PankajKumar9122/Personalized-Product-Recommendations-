

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `username`) VALUES
(1, 'Rony'),
(2, 'Maya'),
(3, 'Tom'),
(4, 'John'),
(5, 'Kelly');



CREATE TABLE `user_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `user_products` (`id`, `user_id`, `product_name`, `product_rating`) VALUES
(1, 1, 'mobile', '9'),
(2, 1, 'TV', '8'),
(3, 1, 'mouse', '7'),
(4, 2, 'pen', '8'),
(5, 2, 'mouse', '8'),
(6, 2, 'bag', '6'),
(7, 3, 'mobile', '9'),
(8, 3, 'headphones', '7'),
(9, 4, 'headphones', '8'),
(10, 4, 'TV', '7'),
(11, 5, 'bed sheet', '7'),
(12, 5, 'oven', '8'),
(13, 5, 'clock', '9'),
(14, 5, 'mobile', '6');



ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user_products`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `user_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

;
;
;
