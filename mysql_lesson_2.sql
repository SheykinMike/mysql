DROP DATABASE IF EXISTS example;				Создал БД example
CREATE DATABASE example;
use example;

DROP TABLE IF EXISTS myUsers;					Создал таблицу myUsers
CREATE TABLE myUsers (
id SERIAL PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO myUsers VALUES						Ввел данные
(DEFAULT, 'Иван'),
(DEFAULT, 'Семен'),
(DEFAULT, 'Елена'),
(DEFAULT, 'Владимир'),
(DEFAULT, 'Аркадий'),
(DEFAULT, 'Петр'),
(DEFAULT, 'Тимофей'),
(DEFAULT, 'Зоя'),
(DEFAULT, 'Полина'),
(DEFAULT, 'Александр'),
(DEFAULT, 'Николай'),
(DEFAULT, 'Роман');

\*

mysql> \! mysqldump -u root -h localhost -p example > sample_dump.sql         Создал дамп БД exmple в sample_dump.sql
Enter password: 																				
mysql> \! ls -l																	Проверил, что создался файл sample_dump.sql
итого 1276
-rw-rw-r-- 1 mike mike      24 сен  6 21:54  hello.sql
-rw-rw-r-- 1 mike mike     616 сен  8 21:38  mysql_lesson_2.sql
-rw-rw-r-- 1 mike mike 1245210 сен  6 20:18  mysql.sql
-rw-rw-r-- 1 mike mike    2179 сен  8 21:49  sample_dump.sql
-rw-rw-r-- 1 mike mike    2179 сен  8 21:38  sample.sql
-rw-rw-r-- 1 mike mike    3398 сен  8 20:53  shop.sql
drwxr-xr-x 3 mike mike    4096 авг 14 18:09  snap
drwxr-xr-x 2 mike mike    4096 авг 10 06:13  Видео
drwxr-xr-x 4 mike mike    4096 сен  3 21:23  Документы
drwxr-xr-x 2 mike mike    4096 сен  8 20:15  Загрузки
drwxr-xr-x 2 mike mike    4096 сен  5 21:37  Изображения
drwxr-xr-x 2 mike mike    4096 авг 10 06:13  Музыка
drwxr-xr-x 2 mike mike    4096 авг 10 06:13  Общедоступные
drwxr-xr-x 2 mike mike    4096 сен  8 20:42 'Рабочий стол'
drwxr-xr-x 2 mike mike    4096 авг 10 06:13  Шаблоны


mike@mike-HVY-WXX9:~$ mysql -u root -p sample < sample_dump.sql          Развернул БД sample из sample_dump.sql
Enter password: 
mike@mike-HVY-WXX9:~$ mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 21
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;  												Проверил что БД sample появилась
+--------------------+
| Database           |
+--------------------+
| SQL_study          |
| example            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sample             |
| shop               |
| sys                |
+--------------------+
9 rows in set (0,01 sec)

mysql> select * from sample;
ERROR 1046 (3D000): No database selected
mysql> use sample;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_sample |
+------------------+
| myUsers          |
+------------------+
1 row in set (0,00 sec)

mysql> select * from myUsers;             Проверил содержимое таблицы myUsrs в БД sample
+----+--------------------+
| id | name               |
+----+--------------------+
|  1 | Иван               |
|  2 | Семен              |
|  3 | Елена              |
|  4 | Владимир           |
|  5 | Аркадий            |
|  6 | Петр               |
|  7 | Тимофей            |
|  8 | Зоя                |
|  9 | Полина             |
| 10 | Александр          |
| 11 | Николай            |
| 12 | Роман              |
+----+--------------------+
12 rows in set (0,00 sec)
*\


/*
 * mike@mike-HVY-WXX9:~$ cat .my.cnf
[client]
user=root
password=mi5ntr mike@mike-HVY-WXX9:~$
 * */






