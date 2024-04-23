DROP DATABASE IF EXISTS auto_bank_sysytem123;
CREATE DATABASE auto_bank_sysytem123;
USE auto_bank_sysytem123;


DROP TABLE IF EXISTS client; -- создал таблицу с клиентом банка
CREATE TABLE client (
	id SERIAL PRIMARY KEY,
	last_name VARCHAR(100) COMMENT 'Фамилия',
	first_name VARCHAR(100) COMMENT 'Имя',
    patronymic VARCHAR(100) COMMENT 'Отчество',
    birthday DATE,
    gender CHAR(1),
    phone BIGINT UNSIGNED UNIQUE,
    INDEX client_last_name_first_name_idx(last_name, first_name)
);

DROP TABLE IF EXISTS passport; -- паспорт
CREATE TABLE passport (
	id SERIAL PRIMARY KEY,
	client_passport_id BIGINT UNSIGNED DEFAULT NULL,
	series_p BIGINT,
	number_p BIGINT,
	place_of_issue VARCHAR(100),
	date_of_issue DATE,
	FOREIGN KEY (client_passport_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS address; -- адрес
CREATE TABLE address (
	id SERIAL PRIMARY KEY,
	client_address_id BIGINT UNSIGNED DEFAULT NULL,
	locality VARCHAR(100),
	street VARCHAR(100),
	house BIGINT,
	apartment BIGINT,
	FOREIGN KEY (client_address_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS personal_account; -- Личный кабинет
CREATE TABLE personal_account (
	id SERIAL PRIMARY KEY,
	login_id BIGINT UNSIGNED UNIQUE,
	password_hash varchar(100),
	FOREIGN KEY (login_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS card_types; -- Виды карт
CREATE TABLE card_types (
	id SERIAL PRIMARY KEY,
	name_card VARCHAR(100)
);

DROP TABLE IF EXISTS card_accounts; -- Карточные счета
CREATE TABLE card_accounts (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
	card_types_id BIGINT UNSIGNED DEFAULT NULL,
	account_number VARCHAR(200),
	FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (card_types_id) REFERENCES card_types (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS types_of_deposits; -- Виды депозитов
CREATE TABLE types_of_deposits (
	id SERIAL PRIMARY KEY,
	name_deposit VARCHAR(100)
);

DROP TABLE IF EXISTS deposits; -- Счета депозитов
CREATE TABLE deposits (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
	deposits_id BIGINT UNSIGNED DEFAULT NULL,
	account_number VARCHAR(200),
	FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (deposits_id) REFERENCES types_of_deposits (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS payment_types; -- Виды платежей
CREATE TABLE payment_types (
	id SERIAL PRIMARY KEY,
	name_payment VARCHAR(100)
);

DROP TABLE IF EXISTS payment; -- платежи
CREATE TABLE payment (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
	payment_id BIGINT UNSIGNED DEFAULT NULL,
	number_payment BIGINT UNSIGNED UNIQUE,
	FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (payment_id) REFERENCES payment_types (id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS сredits; -- Кредиты
CREATE TABLE сredits (
	id SERIAL PRIMARY KEY,
	credit_card_id BIGINT UNSIGNED DEFAULT NULL,
	consumer_credit_id BIGINT UNSIGNED DEFAULT NULL,
	FOREIGN KEY (credit_card_id) REFERENCES card_accounts (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (credit_card_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (consumer_credit_id) REFERENCES deposits (id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (consumer_credit_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
);
















