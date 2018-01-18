CREATE DATABASE  IF NOT EXISTS `web_books_storage`;
USE `web_books_storage`;
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `BOOK_ID` INT NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` INT NOT NULL ,
  `BOOK_TITLE` VARCHAR(60) NOT NULL,
  `PUBLISHER` VARCHAR(60) NOT NULL ,
  PRIMARY KEY (`BOOK_ID`) /*,
  CONSTRAINT FK_BOOK_1 FOREIGN KEY (`CATEGORY_ID`) REFERENCES category(`CATEGORY_ID`)*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `books` WRITE;
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (1, 'Practical Clojure', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Beginning Groovy, Grails and Griffon', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Definitive Guide to Grails 2','Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (2, 'Groovy and Grails Recipes','Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Modern Java Web Development','Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java 7 Recipes', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java EE 7 Recipes', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Beginning Java 7 ', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Pro Java 7 NIO.2', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Java 7 for Absolute Beginners','Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (3, 'Oracle Certified Java Enterprise Architect Java EE7', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (4, 'Beginning Scala', 'Apress');
insert into books (CATEGORY_ID, BOOK_TITLE, PUBLISHER) values (4, 'Первая книга про Джава', 'СамИздат');
UNLOCK TABLES;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `CATEGORY_ID` INT NOT NULL AUTO_INCREMENT ,
  `CATEGORY_DESCRIPTION` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`CATEGORY_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `category` WRITE;
INSERT INTO category (CATEGORY_DESCRIPTION) values ('Clojure');
INSERT INTO category (CATEGORY_DESCRIPTION) values ('Groovy');
INSERT INTO category (CATEGORY_DESCRIPTION) values ('Java');
INSERT INTO category (CATEGORY_DESCRIPTION) values ('Scala');
UNLOCK TABLES;

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `AUTHOR_ID` INT NOT NULL AUTO_INCREMENT ,
  `BOOK_ID` INT NOT NULL ,
  `FIRST_NAME` VARCHAR(20) NOT NULL ,
  `LAST_NAME` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`AUTHOR_ID`) /*,
  FOREIGN KEY (`BOOK_ID`) REFERENCES books (`BOOK_ID`)*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `author` WRITE;
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (1, 'Luke', 'VanderHart');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (2, 'Vishal', 'Layka');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (3, 'Jeff', 'Brown');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (4, 'Bashar', 'Jawad');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (5, 'Vishal', 'Layka');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (6, 'Josh', 'Juneau');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (7, 'Josh', 'Juneau');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (8, 'Jeff', 'Friesen');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (9, 'Anghel', 'Leonard');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (10, 'Jay', 'Bryant');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (11, 'B V', 'Kumar');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (12, 'David', 'Pollak');
insert into author (BOOK_ID, FIRST_NAME, LAST_NAME) values (13, 'Сергей', 'Стариков');
UNLOCK TABLES;