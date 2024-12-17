-- create employee table.
CREATE TABLE employee (
	Id INT NOT NULL UNIQUE,
	Firstname TEXT NOT NULL,
	Lastname TEXT NOT NULL,
	Position TEXT NOT NULL,
	DepartmentId INT NOT NULL,
	Salary INT NOT NULL,
	Address TEXT,
	Auphur TEXT,
	ProvinceId INT,
	Postcode INT,
	Tel INT,
	Mobile INT NOT NULL,
	Email INT NOT NULL,
	HouseId INT
	Birthdate INT,
	Age INT,
	Identitycard INT NOT NULL UNIQUE,
	Expirationdate INT,
	Rage TEXT,
	Nationality TEXT,
	Hight INT,
	Weight INT,
	MilitaryId INT,
	MaritalId INT, 
	Sex TEXT NOT NULL 
	);

-- create house table.
CREATE TABLE House (
	HouseId INT NOT NULL UNIQUE,
	House TEXT,
	PRIMARY KEY ('Id')
	);


-- create marital table.
CREATE TABLE Marital (
	MaritalId INT NOT NULL UNIQUE,
	Mariatal_status TEXT,
	PRIMARY KEY ('Id')
	);

-- create military table.
CREATE TABLE Military (
	MilitaryId INT NOT NULL UNIQUE,
	Military_status TEXT,
	PRIMARY KEY ('Id')
	);

-- create province table.
CREATE TABLE Province (
	ProvinceId INT NOT NULL UNIQUE,
	Province TEXT ,
	PRIMARY KEY ('Id')
	);

-- insert data to employee table.
INSERT INTO employee VALUES
	(1, 'ashton', 'sanders', 'directors', 1, 150000, '1027 phloen chit road', NULL, 3, 10330, NULL, 0811111111, 'ashton.san@yahoo.com', 2, '03-04-1971', 54, 1100000000001, '01-04-2028', 'thai', 'thai', 178, 80, 2, 2, 'male'),
	(2, 'yara', 'shahidi', 'directors', 1, 150000, '191 silom road silom', 'bangrak', 3, 10500, 043000000, 0822222222, 'yara.sha@hotmail.com', 2, '05-07-1969', 56, 1200000000001, '01-07-2026', 'thai', 'thai', 165, 46, 1, 2, 'famale'),
	(3, 'elle', 'fanning', 'manager', 2, 100000, '79/3 sathupradit road chongnonsee', 'yannawa', 3, 10120, 044000000, 0833333333, 'elle.fan@gmail.com', 2, '28-01-1976', 49, 1300000000001, '01-01-2029', 'thai', 'thai', 162, 53, 1, 2, 'famale'),
	(4, 'caleb', 'McLaughlin', 'manager', 3, 100000, '74-75 moo 5 wichit', 'phuket', 48, 83000, NULL, 0844444444, 'caleb.mcl@gmail.com', 1, '15-11-1978', 47, 1400000000001, '01-11-2025', 'thai', 'thai', 182, 87, 2, 4, 'male'),
	(5, 'emma', 'corrin', 'manager', 4, 100000, '99/99 moo 2 bangtalad', 'pakkred', 36, 11120, 045000000, 0855555555, 'emma.cor@yahoo.com', 2, '08-06-1975', 50, 1500000000001, '01-06-2030', 'thai', 'thai', 172, 58, 1, 2, 'famale'),
	(6, 'jharrel', 'jerome', 'manager', 5, 100000, '333/102 moo 9 nongprue', 'banglamung', 12, 20260, NULL, 0866666666, 'jharrel.jer@gmail.com', 2, '07-12-1980', 45, 1600000000001, '01-12-2030', 'thai', 'thai', 176, 63, 2, 1, 'male'),
	(7, 'rachel', 'zegler', 'manager', 6, 100000, '99/3 moo 4 fah ham', 'mueang chiangmai', 10, 50000, NULL, 0877777777, 'rachel.zeg@outlook.com', 2, '03-05-1980', 45, 1700000000001, '01-05-2027', 'thai', 'thai', 155, 43, 1, 3, 'famale'),
	(8, 'amandla', 'stenberg', 'secretary', 1, 60000, '1520 kanchanavanich road, hadyai', 'hadyai', 64, 90110, NULL, 0888888888, 'amandla.ste@gmail.com', 3, '06-11-1989', 36, 1800000000001, '01-11-2027', 'thai', 'thai', 168, 55, 1, 4, 'famale'),
	(9, 'rachel', 'sennott', 'secretary', 1, 60000, '209/3 moo 2 bophut', 'koh samui', 67, 84320, 046000000, 0899999999, 'rachel.sen@yahoo.com', 3, '14-08-1987', 38, 1900000000001, '01-08-2028', 'thai', 'thai', 156, 48, 1, 1, 'famale'),
	(10, 'justice', 'smith', 'staff', 2, 45000, '99/21 moo 2 bangtoei', 'samphran', 28, 73210, NULL, 0900000000, 'justice.smi@gmail.com', 4, '26-12-1991', 34, 2000000000001, '01-12-2031', 'thai', 'thai', 176, 68, 2, 2, 'male'),
	(11, 'hunter', 'Schafer', 'staff', 3, 42000, '199/3 moo 6 sao thong hin', 'Bangyai', 36, 11140, NULL, 0911111111, 'hunter.sch@hotmail.com', 3, '09-06-1993', 32, 2100000000001, '01-06-2032', 'thai', 'thai', 162, 44, 1, 1, 'famale'),
	(12, 'daisy', 'edgarjones', 'staff', 4, 42000, '69/3 pradit manutham road', 'ladprao', 3, 10230, NULL, 0922222222, 'daisy.edg@outlook.com', 1, '04-03-1992', 33, 2200000000001, '01-03-2026', 'thai', 'thai', 158, 55, 1, 2, 'famale'),
	(13, 'cailee', 'spaeny', 'staff', 2, 35000, '888 mittraphap-nong khai road naimuang', 'muang nakhon ratchasima', 29, 30000, NULL, 0933333333, 'cailee.spa@gmail.com', 2, '08-10-1995', 30,2300000000001, '01-10-2029', 'thai', 'thai', 163, 43, 1, 2, 'famale'),
	(14, 'ella', 'purnell', 'staff', 3, 32000, '39 bangna-trad road bang kaeo', 'bang phli', 57, 10540, NULL, 0944444444, 'ella.pur@outlook.com', 3, '14-09-1995', 30, 2400000000001, '01-09-2027', 'thai', 'thai', 168, 56, 1, 1, 'famale'),
	(15, 'paul', 'mescal', 'staff', 5, 28000, '77/1-3271/5 prajaksilapakom road', 'mueang udon thani', 73, 41000, NULL, 0955555555, 'paul.mes@yahoo.com', 4, '26-04-1997', 28, 2500000000001, '01-04-2032', 'thai', 'thai', 172, 65, 2, 1, 'male'),
	(16, 'jacob', 'elordi', 'staff', 5, 25000, '198/9 soi rat uthit 200 pi 1 tambon patong', 'kathu', 48, 83150, 047000000, 0966666666, 'jacob.elo@google.com', 3, '30-12-1998', 27, 2600000000001, '01-12-2028', 'thai', 'thai', 178, 68, 2, 1, 'male'),
	(17, 'millie', 'bobbybrown', 'staff', 6, 23000, '999 ratchaphruek road', NULL, 36, 11130, NULL, 0977777777, 'millie.bob@gmail.com', 1, '12-05-2000', 24, 2700000000001, '01-05-2031', 'thai', 'thai', 164, 49, 1, 1, 'famale'),
	(18, 'anya', 'taylorjoy', 'staff', 3, 23000, '699/9 moo 10', NULL, 30, 60000, NULL, 0988888888, 'anya.tay@gmail.com', 4, '08-07-2000', 24, 2800000000001, '01-07-2027', 'thai', 'thai', 157, 46, 1, 2, 'famale'),
	(19, 'ayo', 'edebiri', 'staff', 4, 21000, '1691 paholyothin road', 'chatuchak', 3, 10900, NULL, 0999999999, 'ayo.ede@outlook.com', 3, '16-05-2001', 23, 2900000000001, '01-05-2029', 'thai', 'thai', 163, 52, 1, 1, 'famale'),
	(20, 'florence', 'pugh', 'staff', 6, 21000, '94 phaholyothin road prachathipat', 'thanyaburi', 37, 12130, NULL, 0910101010, 'florence.pug@hotmail.com', 4, '26-11-2001', 23, 3000000000001, '01-11-2029', 'thai', 'thai', 166, 54, 1, 1, 'famale');

-- insert data to house table.
INSERT INTO House VALUES
	(1, 'living with parent'),
	(2, 'own home'),
	(3, 'hired house'),
	(4, 'hiredflat/hostel');

-- insert data to dapartment table.
INSERT INTO Department VALUES
	(1, 'director'),
	(2, 'finance'),
	(3, 'Sales'),
	(4, 'personnel'),
	(5, 'Technical'),
	(6, 'Marketing');

-- insert data to marital table.
INSERT INTO Marital VALUES
	(1, 'single'),
	(2, 'married'),
	(3, 'widowed'),
	(4, 'separated');

-- insert data to military table.
INSERT INTO Military VALUES
	(1, 'exempted'),
	(2, 'served'),
	(3, 'not yet served');

-- insert data to province table.
INSERT INTO Province VALUES
	(1, 'Amnat Charoen'),
	(2, 'Ang Thong'),
	(3, 'Bangkok'),
	(4, 'Bueng Kan'),
	(5, 'Buriram'),
	(6, 'Chachoengsao'),
	(7, 'Chai Nat'),
	(8, 'Chaiyaphum'),
	(9, 'Chanthaburi'),
	(10, 'Chiang Mai'),
	(11, 'Chiang Rai'),
	(12, 'Chonburi'),
	(13, 'Chumphon'),
	(14, 'Kalasin'),
	(15, 'Kamphaeng Phet'),
	(16, 'Kanchanaburi'),
	(17, 'Khon Kaen'),
	(18, 'Krabi'),
	(19, 'Lampang'),
	(20, 'Lamphun'),
	(21, 'Loei'),
	(22, 'Lopburi'),
	(23, 'Mae Hong Son'),
	(24, 'Maha Sarakham'),
	(25, 'Mukdahan'),
	(26, 'Nakhon Nayok'),
	(27, 'Nakhon Pathom'),
	(28, 'Nakhon Phanom'),
	(29, 'Nakhon Ratchasima'),
	(30, 'Nakhon Sawan'),
	(31, 'Nakhon Si Thammarat'),
	(32, 'Nan'),
	(33, 'Narathiwat'),
	(34, 'Nong Bua Lam Phu'),
	(35, 'Nong Khai'),
	(36, 'Nonthaburi'),
	(37, 'Pathum Thani'),
	(38, 'Pattani'),
	(39, 'Phang Nga'),
	(40, 'Phatthalung'),
	(41, 'Phayao'),
	(42, 'Phetchabun'),
	(43, 'Phetchaburi'),
	(44, 'Phichit'),
	(45, 'Phitsanulok'),
	(46, 'Ayutthaya'),
	(47, 'Phrae'),
	(48, 'Phuket'),
	(49, 'Prachinburi'),
	(50, 'Prachuap Khiri Khan'),
	(51, 'Ranong'),
	(52, 'Ratchaburi'),
	(53, 'Rayong'),
	(54, 'Roi Et'),
	(55, 'Sa Kaeo'),
	(56, 'Sakon Nakhon'),
	(57, 'Samut Prakan'),
	(58, 'Samut Sakhon'),
	(59, 'Samut Songkhram'),
	(60, 'Saraburi'),
	(61, 'Satun'),
	(62, 'Sing Buri'),
	(63, 'Sisaket'),
	(64, 'Songkhla'),
	(65, 'Sukhothai Thani'),
	(66, 'Suphan Buri'),
	(67, 'Surat Thani'),
	(68, 'Surin'),
	(69, 'Tak'),
	(70, 'Trang'),
	(71, 'Trat'),
	(72, 'Ubon Ratchathani'),
	(73, 'Udon Thani'),
	(74, 'Uthai Thani'),
	(75, 'Uttaradit'),
	(76, 'Yala'),
	(77, 'Yasothon');

-- find firstname, lastname, position column where position column is directors.
SELECT 
	Firstname,
	Lastname,
	Position
FROM Employee
WHERE position = 'directors';

/* find firstname, lastname, position, email column where email column have @gmail.com 
and position column is staff. */
SELECT 
	Firstname,
	Lastname,
	Position,
	Email
FROM Employee
WHERE email LIKE '%@gmail.com' AND Position = 'staff';

-- find firstname, lastname, province column where province column is Bangkok.
SELECT 
	E.Firstname,
	E.Lastname,
	P.Province
FROM Employee AS E
INNER JOIN Province AS P ON E.ProvinceId = P.ProvinceId
WHERE P.Province = 'Bangkok';

-- find firstname, lastname column where age > average age 
SELECT Firstname, Lastname From Employee
WHERE Age > (SELECT AVG(Age) FROM Employee);

/* find firstname, lastname, position, salary column have codition salary between 25000 and 60000 
and stay in sales, personel, finance department. */
WITH
	salary_staff AS (
	SELECT * FROM Employee
	WHERE Salary BETWEEN 25000 AND 60000
),
	custom_department AS (
	SELECT * FROM department
	WHERE Department IN ('Sales', 'Personnel', 'finance')
)	
	
SELECT 
	S.Firstname || ' ' || S.Lastname AS fullname,
	s.Position,
	s.Salary
FROM salary_staff AS S
JOIN custom_department AS C
ON S.DepartmentId = c.DepartmentId;

-- count number of employees for each position.
SELECT
	Firstname,
	Lastname,
	Position,
	ROW_NUMBER() OVER(PARTITION BY Position) AS PositionID
FROM Employee;

-- divide employee into 4 groups
SELECT 
	Firstname,
	Lastname,
	position,
	NTILE(4) OVER(ORDER BY Firstname) AS Name
FROM Employee;
