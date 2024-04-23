USE auto_bank_sysytem;

LOCK TABLES `client` WRITE;
INSERT INTO `client` VALUES
('1','ИВАНОВ','ИВАН','ИВАНОВИЧ','1980-01-20','m','+790012322436'),
('2','СМИРНОВА','МАРИЯ','МИХАЙЛОВНА','1961-04-11','f','+79221454230'),
('3','ЗАЙЦЕВА','ОЛЬГА','АНДРЕЕВНА','1991-09-02','f','+79518520234'),
('4','ЖУРАВЛЕВ','ВАЛЕНТИН','ПЕТРОВИЧ','1991-09-02','f','+79518533234'),
('5','ГУСЕВА','СВЕТЛАНА','БОРИСОВНА','1989-07-30','f','+79068254303'),
('6','ГРАЧ','ПАВЕЛ','АЛЕКСАНДРОВИЧ','2000-08-04','m','+79000299823'),
('7','НОВИКОВА','ЕЛЕНА','АЛЕКСАНДРОВНА','1992-03-20','f','+79204654444'),
('8','ЗУБОВ','АНТОН','ЮРЬЕВИЧ','1983-09-03','m','+79195415256'),
('9','ФРОЛОВА','МАРИНА','ВИКТОРОВНА','2009-04-28','f','+79138526438'),
('10','НИКОЛАЕВ','АЛЕКСЕЙ','ВИКТОРОВИЧ','1972-11-01','m','+79327418956'),
('11','МЫЛЬНИКОВ','МИХАИЛ','СЕРГЕЕВИЧ','1986-05-18','m','+79060823944'),
('12','ПОНОМАРЕВ','ОЛЕГ','АНАТОЛЬЕВИЧ','1961-12-23','m','+79113216549'),
('13','БОБРОВА','ОЛЬГА','ПЕТРОВНА','1966-01-21','f','+79827418529'),
('14','ИОНОВА','НАТАЛЬЯ','ВЛАДИСЛАВОВНА','2008-10-01','f','+79329876541'),
('15','МЕДВЕДЕВА','АНАСТАСИЯ','ИГОРЕВНА','1939-06-18','f','+79230303030');
UNLOCK TABLES;

LOCK TABLES `passport` WRITE;
INSERT INTO `passport` VALUES
('1','1','6606','321321','ОВД СВЕРДЛОВСКОЙ ОБЛ','2020-04-28'),
('2','2','7502','456654','ОВД ЧЕЛЯБИНСКОЙ ОБЛ','2010-10-10'),
('3','3','0711','987456','ОВД МОСКОВСКОЙ ОБЛ','2006-09-30'),
('4','4','0711','258963','ОВД МОСКОВСКОЙ ОБЛ','2009-04-01'),
('5','5','6608','984478','ОВД СВЕРДЛОВСКОЙ ОБЛ','2012-05-11'),
('6','6','7505','989456','ОВД ЧЕЛЯБИНСКОЙ ОБЛ','2014-12-31'),
('7','7','2309','987254','РУВД КРАСНОДАРСКОГО КРАЯ','2010-02-25'),
('8','8','7505','989456','ОВД ЧЕЛЯБИНСКОЙ ОБЛ','2014-12-31'),
('9','9','7506','515575','ОВД ЧЕЛЯБИНСКОЙ ОБЛ','2021-04-20'),
('10','10','7520','159753','УВД ЧЕЛЯБИНСКОЙ ОБЛ','2003-01-30'),
('11','11','2314','693396','ОВД КРАСНОДАРСКОГО КРАЯ','2006-10-25'),
('12','12','8606','256965','ГУВД ХМАО','2002-08-11'),
('13','13','1808','414233','ОУФМС РОССИИ','2011-03-24'),
('14','14','0206','654535','ОВД РЕСП.БАШКОРТОСТАН','2022-10-03'),
('15','15','3404','798715','РУВД Г.ВОЛГОГРАД','2000-07-01');
UNLOCK TABLES;

LOCK TABLES `address` WRITE;
INSERT INTO `address` VALUES
('1','1','ЕКАТЕРИНБУРГ','БЕЛИНСКОГО','15','1'),
('2','2','МАГНИТОГОРСК','ГРЯЗНОВА','125','19'),
('3','3','КРАСНОГОРСК','ЛЕНИНА','16','44'),
('4','4','КОРОЛЕВ','ПУШКИНА','49','278'),
('5','5','ЕКАТЕРИНБУРГ','ЛЕНИНА','87','31'),
('6','6','ЧЕЛЯБИНСК','ЦВИЛЛИНГА','1','57'),
('7','7','КРАСНОДАР','КРАСНАЯ','11','43'),
('8','8','ЗЛАТОУСТ','НОВОРОССИЙСКАЯ','3','59'),
('9','9','ЧЕЛЯБИНСК','КИРОВА','3','10'),
('10','10','КЫШТЫМ','ВАСИЛЕВСКОГО','89','78'),
('11','11','АБИНСК','ТОЛСТОГО','58','1'),
('12','12','НЯГАНЬ','ПРОХЛАДНАЯ','89','99'),
('13','13','ИЖЕВСК','НИКОЛЬСКАЯ','5','14'),
('14','14','УФА','АЙСКАЯ','61','24'),
('15','15','ВОЛГОГРАД','НАБЕРЕЖНАЯ','82','61');
UNLOCK TABLES;

LOCK TABLES `personal_account` WRITE;
INSERT INTO `personal_account` VALUES
('1','1','12324135RFWE'),
('2','2','4154FERF'),
('3','3','124SWDF'),
('4','4','278DSAF'),
('5','5','3ASD1'),
('6','6','57DSA'),
('7','7','4FSDAG3'),
('8','8','GDg9'),
('9','9','1sadfjk0'),
('10','10','7hgkgds8'),
('11','11','1wqfvsdj'),
('12','12','9egerterw39'),
('13','13','gerawF1234'),
('14','14','2DSAGFHGJHVCX4'),
('15','15','6HJYKGJFFSD1');
UNLOCK TABLES;

LOCK TABLES `card_types` WRITE;
INSERT INTO `card_types` VALUES
('1','WORLD'),
('2','VISA CLASSIC'),
('3','VISA GOLD');
UNLOCK TABLES;

LOCK TABLES `card_accounts` WRITE;
INSERT INTO `card_accounts` VALUES
('1','1','1','40817810437110900990'),
('2','2','2','40817978437110903240'),
('3','3','3','40817810437110934290'),
('4','4','1','40817810437110954440'),
('5','5','2','40817810437110111390'),
('6','6','3','40817810437111234490'),
('7','7','3','40817840437115235522'),
('8','8','1','40817810437542322990'),
('9','9','1','40817810476543333990'),
('10','10','1','40817810324234234990'),
('11','11','1','40817810534646620990'),
('12','12','3','40817810543433400990'),
('13','13','2','40817810437110665433'),
('14','14','2','40817810437111111111'),
('15','15','3','40817810437222222222'),
('16','3','1','40817810437110934290'),
('17','3','2','40817810437110934290'),
('18','9','3','40817810437110934290'),
('19','11','2','40817810437110934290');
UNLOCK TABLES;

LOCK TABLES `types_of_deposits` WRITE;
INSERT INTO `types_of_deposits` VALUES
('1','current_account'),
('2','demand deposit'),
('3', 'term deposit');
UNLOCK TABLES;

LOCK TABLES `deposits` WRITE;
INSERT INTO `deposits` VALUES
('1','4','1','40817810437110976990'),
('2','4','3','42307978437110903240'),
('3','3','3','42301810437110934290'),
('4','5','3','42301810437110954440'),
('5','5','2','42301810437110111390'),
('6','6','3','42301810437111234490'),
('7','8','3','42301840437115235522'),
('8','8','2','42301810437542322990'),
('9','8','1','40817810476543333490'),
('10','10','1','40817810324221234990');
UNLOCK TABLES;

LOCK TABLES `payment_types` WRITE;
INSERT INTO `payment_types` VALUES
('1','ВОДА'),
('2','ГОРЯЧАЯ ВОДА'),
('3', 'КАПИТАЛЬНЫЙ РЕМОНТ'),
('4', 'ЛИФТ'),
('5', 'ВОЗДУХ'),
('6', 'СВЯЗЬ'),
('7', 'ЭЛЕКТРОЭНЕРГИЯ');
UNLOCK TABLES;

LOCK TABLES `payment` WRITE;
INSERT INTO `payment` VALUES
('1','1','5','3214'),
('2','4','3','1312'),
('3','3','1','4512'),
('4','12','5','3212'),
('5','5','2','2231'),
('6','6','4','4690'),
('7','8','5','6312'),
('8','15','6','0975'),
('9','11','7','4067'),
('10','7','5','6902'),
('11','2','6','9655'),
('12','1','7','4167'),
('13','10','5','4990');
UNLOCK TABLES;

LOCK TABLES `сredits` WRITE;
INSERT INTO `сredits` VALUES
('1','1','7'),
('2','2','6'),
('3','3','4'),
('4','5','8');
UNLOCK TABLES;













