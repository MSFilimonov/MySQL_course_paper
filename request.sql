USE auto_bank_sysytem;

-- узнаю кто платил за воздух
SELECT c.last_name, c.first_name, c.patronymic, count(*) AS количество 
FROM client c 
JOIN payment p ON c.id = p.client_id  
WHERE payment_id = 5
GROUP BY c.id 

-- узнаю какие карты и счета карт открыты и на кого
SELECT c.id, c.last_name, c.first_name, c.patronymic, ct.name_card, ca.account_number AS 'номер счета карты'
FROM client c 
JOIN card_accounts ca ON c.id = ca.client_id  
JOIN card_types ct ON ca.card_types_id = ct.id 

 -- у кого открыты счета депозитов
DROP PROCEDURE IF EXISTS sp_accounts_deposit; 

DELIMITER //

CREATE PROCEDURE sp_accounts_deposit (for_clien_id BIGINT)
BEGIN 
	SELECT c.id, c.last_name, c.first_name, c.patronymic, d.account_number
	FROM client c 
	JOIN deposits d ON d.client_id = c.id
	WHERE for_clien_id = d.client_id;
	END //
DELIMITER ;

CALL sp_accounts_deposit(4);

-- у кого открыты счета карт

DROP PROCEDURE IF EXISTS sp_accounts_card; 

DELIMITER //

CREATE PROCEDURE sp_accounts_card (for_clien_c_id BIGINT)
BEGIN 
	SELECT c.id, c.last_name, c.first_name, c.patronymic, ca.account_number
	FROM client c 
	JOIN card_accounts ca  ON ca.client_id = c.id
	WHERE for_clien_c_id = ca.client_id;
	END //
DELIMITER ;

CALL sp_accounts_card(3);

-- представления кто за что платил

CREATE OR REPLACE VIEW full_payment
AS 
SELECT c.id, c.last_name, c.first_name, c.patronymic, pt.name_payment 
FROM client c 
JOIN payment p ON p.client_id = c.id
JOIN payment_types pt ON p.payment_id = pt.id;

SELECT * FROM full_payment
WHERE id = 3

--  выбираем кто на пенсии т.е. 60+
	
CREATE OR REPLACE VIEW pension
AS
SELECT c.id, c.last_name, c.first_name, c.patronymic, c.birthday 
FROM client c
WHERE TIMESTAMPDIFF (YEAR, c.birthday, NOW())>60;

SELECT * FROM pension


-- Тригер на паспорт
-- действующий
CREATE DEFINER=`root`@`localhost` TRIGGER `date_passport` BEFORE INSERT ON `passport` FOR EACH ROW BEGIN 
	IF NEW.date_of_issue > current_date() THEN 
		SET NEW.date_of_issue = 'error';
	END IF;
END

-- на введение 
CREATE DEFINER=`root`@`localhost` TRIGGER `int_date_passport` BEFORE UPDATE ON `passport` FOR EACH ROW BEGIN 
	IF NEW.date_of_issue > current_date() THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ошибка! некорректная дата выдачи паспорта';
	END IF;
END
	
	
	
	
	
	
	
	
	
	
	
	