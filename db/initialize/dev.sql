# Docker Compose の開発/テスト DB で利用する
CREATE DATABASE IF NOT EXISTS `my-app`;
CREATE DATABASE IF NOT EXISTS `my-app-test`;

CREATE USER 'app'@'%' IDENTIFIED BY 'app';
GRANT ALL ON `my-app`.* TO 'app'@'%';
GRANT ALL ON `my-app-test`.* TO 'app'@'%';
