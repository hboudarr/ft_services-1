--Creation of user1 and user2

INSERT INTO `wp_users` (`user1`, `user_pass`, `user_nicename`, `user_email`, `user_status`) \
VALUES (`user1`, MD5(`user1`), `user1`, `user1@example.com`, `0`, `user1`);

INSERT INTO `wp_users` (`user_login`, `user_pass`, `user_nicename`, `user_email`, `user_status`) \
VALUES (`user2`, MD5(`user2`), `user2`, `user2@example.com`, `0`, `user2`);

FLUSH PRIVILEGES;