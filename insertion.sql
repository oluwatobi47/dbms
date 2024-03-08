-- HISTORICAL INSERTION

INSERT INTO company (name, license_number, email, establishment_date) VALUES
('Acme Inc.', 'ACME-1234', 'acme@yahoo.com', '2010-12-12'),
('Beehive Finance Ltd.', 'BEEH-5678', 'beehive@gmail.com', '2011-12-02'),
('Cyberdyne Systems', 'CYBD-9012', 'cyberdyne@bing.com', '2012-01-03'),
('Dunder Mifflin', 'DUND-3456', 'dundermifflin@live.com', '2013-05-04'),
('E Corp', 'ECOR-7890', 'ecorp@edu.com', '2014-05-12'),
('Frobozz Magic Co.', 'FROB-1234', 'frobozz@gmail.com', '2015-06-09'),
('Globex Corporation', 'GLOB-5678', 'globex@yahoo.com', '2016-02-07'),
('Hooli', 'HOOL-9012', 'hooli@bing.com', '2017-08-01'),
('Initech', 'INTE-3456', 'initech@gmail.com', '2018-09-09'),
('Jazz Pharmaceuticals', 'JAZZ-7890', 'jazzpharma@gmail.com', '2019-11-10'),
('AB Loan Services', 'UK-FIN-LI-2023100012', 'hq@abloanservices.co.uk', '2023-08-14'),
('JJ Bank', 'UK-FIN-LI-2023100011', 'hq@jjbank.co.uk', '2023-08-14'),
('Pearl Finance Ltd.', 'UK-FIN-LI-2023100013', 'hq@pearlfinance.com', '2023-08-08');


INSERT INTO company_office_address (comp_id, street_name, city, country, postcode, email) VALUES
(1, 'Regent Street', 'London', 'UK', 'W1B 5AH', 'contact@acme.co.uk'),
(1, '45 Colmore Row', 'Birmingham', 'UK', 'B2 53H', 'birmingham.contact@acme.co.uk'),
(2, 'Fifth Avenue', 'Chicago', 'USA', '10001', 'contact@beehive-finance.com'),
(3, 'Champs-Élysées', 'Paris', 'France', '75008', 'contact@champs.eu'),
(4, 'Orchard Road', 'Seletar', 'Singapore', '238879', 'contact@dundermifflin.com'),
(5, 'Nanjing Road', 'Shanghai', 'China', '200001', 'contact@ecorp.eu'),
(6, 'Oxford Street', 'Birmingham', 'UK', 'W1D 1BS', 'contact@frobozz.co.uk'),
(7, 'Wall Street', 'Massachusetts', 'USA', '10005', 'contact@globex.com'),
(8, 'La Rambla', 'Madrid', 'Spain', '08002', 'contact@hooli.eu'),
(9, 'Rodeo Drive', 'New York', 'USA', '90210', 'contact@initech.com'),
(10, 'Shinjuku Dori', 'Tokyo', 'Japan', '160-0022', 'contact@jazzpharma.jp'),
(12, '45 Colmore Row Floor 2', 'Birmingham', 'UK', 'B2 53H', 'birmingham.contact@abloanservice.co.uk');


insert into public.sys_user (id, first_name, last_name, ssn, email, phone_number, date_of_birth, comp_id)
values  (1, 'Alice', 'Smith', '123-45-6789', 'alice.smith@example.com', '(123) 456-7890', '1990-01-01', 3),
        (2, 'Bob', 'Jones', '234-56-7890', 'bob.jones@example.com', '(234) 567-8901', '1991-02-02', 1),
        (3, 'Charlie', 'Brown', '345-67-8901', 'charlie.brown@example.com', '(345) 678-9012', '1992-03-03', 5),
        (4, 'David', 'Green', '456-78-9012', 'david.green@example.com', '(456) 789-0123', '1993-04-04', 2),
        (5, 'Eve', 'White', '567-89-0123', 'eve.white@example.com', '(567) 890-1234', '1994-05-05', 4),
        (6, 'Frank', 'Black', '678-90-1234', 'frank.black@example.com', '(678) 901-2345', '1995-06-06', 7),
        (7, 'Grace', 'Lee', '789-01-2345', 'grace.lee@example.com', '(789) 012-3456', '1996-07-07', 8),
        (8, 'Harry', 'Potter', '890-12-3456', 'harry.potter@example.com', '(890) 123-4567', '1997-08-08', 2),
        (9, 'Iris', 'Wang', '901-23-4567', 'iris.wang@example.com', '(901) 234-5678', '1998-09-09', 9),
        (10, 'Jack', 'Chen', '012-34-5678', 'jack.chen@example.com', '(012) 345-6789', '1999-10-10', 5),
        (11, 'Kate', 'Wilson', '514-14-8905', 'kate.wilson@example.com', '(514) 456-7890', '2000-01-01', 2),
        (12, 'Leo', 'Garcia', '690-05-5315', 'leo.garcia@example.com', '(690) 567-8901', '2001-02-02', 10),
        (13, 'Mary', 'Johnson', '421-37-1396', 'mary.johnson@example.com', '(421) 678-9012', '2002-03-03', 6),
        (14, 'Nick', 'Miller', '458-02-6124', 'nick.miller@example.com', '(458) 789-0123', '2003-04-04', 9),
        (15, 'Olivia', 'Davis', '612-20-6832', 'olivia.davis@example.com', '(612) 890-1234', '2004-05-05', 2),
        (16, 'Peter', 'Parker', '300-62-3266', 'peter.parker@example.com', '(300) 901-2345', '2005-06-06', 3),
        (17, 'Quinn', 'Taylor', '660-03-8360', 'quinn.taylor@example.com', '(660) 012-3456', '2006-07-07', 5),
        (18, 'Ryan', 'Smith', '213-46-8915', 'ryan.smith@example.com', '(213) 123-4567', '2007-08-08', 1),
        (19, 'Sophia', 'Lee', '449-48-3135', 'sophia.lee@example.com', '(449) 234-5678', '2008-09-09', 10),
        (20, 'Tom', 'Brown', '559-81-1301', 'tom.brown@example.com', '(559) 345-6789 ', '2009-10-10', 1),
        (21, 'James', 'Brown', '222-12-1231', 'jb@abloanservices.co.uk', '(44) 712-1232', '1990-08-30', 12),
        (22, 'Tobi', 'Alao', '222-12-1232', 'tobi@abloanservices.co.uk', '(44) 712-1234', '1990-01-01', 12),
        (23, 'Jack', 'Jones', '222-12-1233', 'jackjones@yahoo.com', '(44) 712-1235', '1993-08-30', 12);

insert into public.loan_package (id, name, description, interest_rate, comp_id, flag)
values  (1, 'Corporate Loan (gold)', 'the top tier package for frequent loaners with high credit scores', 2, 1, 'ENABLED'),
        (2, 'Corporate Loan (silver)', 'the mid tier package for solemn loaners with good credit scores', 3, 1, 'DISABLED'),
        (3, 'Student Loan (gold)', 'Loan services for students wishing to take short to medium tenure loans', 5, 1, 'ENABLED'),
        (4, 'Student Loan (silver)', 'Loan services for students wishing to take short to medium tenure loans', 3.5, 1, 'ENABLED'),
        (5, 'Mortgage Loan (gold)', 'Mortgage loan services for high credit score borrowers', 2.8, 1, 'ENABLED'),
        (6, 'red', 'the premium package for elite loaners with excellent credit scores', 1, 2, 'ENABLED'),
        (7, 'blue', 'the exclusive package for VIP loaners with flawless credit scores', 0.5, 2, 'ENABLED'),
        (8, 'green', 'the special package for loyal loaners with long-term relationships', 2.5, 2, 'DISABLED'),
        (9, 'emerald', 'the green package for eco-friendly loaners with sustainable practices', 3.5, 10, 'ENABLED'),
        (10, 'sapphire', 'the blue package for innovative loaners with cutting-edge ideas', 4.5, 10, 'ENABLED'),
        (11, 'pearl', 'the white package for ethical loaners with social responsibility', 5.5, 6, 'DISABLED'),
        (12, 'opal', 'the rainbow package for diverse loaners with multicultural backgrounds', 6.5, 4, 'ENABLED'),
        (13, 'Car Loan (Exclusive)', 'Loan services for potential car owners with a one year repayment tenure', 4, 12, 'ENABLED'),
        (14, 'Mortgage Loan (Exclusive)', 'Loan services for potential home owners with a 10 year repayment tenure', 5, 12, 'ENABLED'),
        (15, 'Student Loan (2%)', 'Loan services for university students studying either a masters or PHD', 2, 11, 'ENABLED'),
        (16, 'Student Loan (1.5%)', 'Loan services for university students in a bachelors program', 1.5, 11, 'ENABLED'),
        (17, 'Mortgage Loan (Exclusive)', 'Loan services for potential home owners with a 10 year repayment tenure', 5, 1, 'ENABLED');

insert into public.borrower (id, address, photo_id, kyc_completed, bank_account_number, bank_sort_code)
values  (1, ('Main Street',123,'London,UK'), 'PHOTO-1234', '1', '12345678', '12-34-56'),
        (2, ('High Road',456,'Manchester,UK'), 'PHOTO-5678', '0', '87654321', '65-43-21'),
        (3, ('Park Avenue',789, 'Liverpool,UK'), 'PHOTO-9012', '1', '23456789', '23-45-67'),
        (4, ('Broadway', 1011,'Birmingham,UK'), 'PHOTO-3456', '0', '98765432', '76-54-32'),
        (5, ('Elm Street',1213,'Leeds,UK'), 'PHOTO-3016', '1', '34567890', '34-56-78'),
        (6, ('King Road',1415,'Glasgow,UK'), 'PHOTO-1235', '0', '45678901', '45-67-89'),
        (7, ('Queen Street',1617,'Edinburgh,UK'), 'PHOTO-5679', '1', '56789012', '56-78-90'),
        (8, ('Prince Avenue',1819, 'Cardiff,UK'), 'PHOTO-9013', '0', '67890123', '67-89-01'),
        (9, ('Princess Lane',2021, 'Bristol,UK'), 'PHOTO-3457', '1', '78901234', '78-90-12'),
        (10, ('Duke Street',2223, 'Belfast,UK'), 'PHOTO-7891', '0', '89012345', '89-01-23'),
        (11, ('Park Avenue',789, 'Birmingham,UK'), 'PHOTO-1236', '1', '90123456', '90-12-34'),
        (12, ('Queen Street',112, 'Edinburgh,UK'), 'PHOTO-5680', '0', '01234567', '01-23-45'),
        (13, ('Church Road',131, 'Bristol,UK'), 'PHOTO-9014', '1', '12340987', '12-34-09'),
        (14, ('Bridge Street',161, 'Glasgow,UK'), 'PHOTO-3458', '0', '23450123', '23-45-01'),
        (23, ('Top Street',152, 'Birmingham,England'), 'PHOTO-3455', '1', '23450124', '23-45-02');

insert into public.company_official (id, role, supervisor_id)
values  (15, 'SUPERVISOR', null),
        (16, 'ADMIN', 15),
        (17, 'MARKETER', 16),
        (18, 'MARKETER', 16),
        (19, 'MARKETER', 16),
        (20, 'MARKETER', 16),
        (21, 'SUPERVISOR', null),
        (22, 'MARKETER', 21);

INSERT INTO loan_application (application_no, amount, interest_rate, date_created, start_date, end_date, borrower_id, loan_package_id, comp_id, status) VALUES
(10123456, 10000, 1, '2019-12-12', '2021-02-01', '2021-05-01', 2, 1, 1, 'PENDING'),
(10123457, 30000, 5, '2018-10-09', '2018-10-09', '2023-10-09', 4, 4, 2, 'APPROVED'),
(10123458, 5000000, 0.03, '2021-02-01', '2021-02-01', '2022-02-01', 8, 5, 2, 'REJECTED'),
(10123459, 900000, 0.7, '2016-01-02', '2017-03-02', '2018-03-02', 11, 6, 2, 'PENDING'),
(10123461, 8000, 3, '2014-02-09', '2015-02-09', '2019-02-09', 5, 10, 4, 'PENDING'),
(10123464, 1000000, 0.05, '2023-01-01', '2023-01-01', '2023-12-31', 13, 9, 6, 'REJECTED');

INSERT INTO approval_group (group_name, comp_id, loan_package_id) VALUES
('Gold Team', 1, 1),
('Silver Team', 1, 2),
('Bronze Team', 1, 3),
('Red Team', 2, 4),
('Blue Team', 2, 5),
('Green Team', 2, 6),
('Emerald Team', 10, 7),
('Sapphire Team', 10, 8),
('Pearl Team', 6, 9),
('Opal Team', 4, 10);

INSERT INTO approval_user_group (group_id, company_official_id) VALUES
(1, 15),
(1, 16),
(1, 17),
(2, 18),
(2, 19),
(2, 20);

INSERT INTO loan_approval (comments, approval_group_id, loan_application_id, approval_status) VALUES
('Good credit score and income', 1, 1, 'APPROVED'),
('Low income but high collateral', 1, 2, 'APPROVED'),
('Bad credit score and low income', 1, 3, 'REJECTED'),
('Missing documents', 2, 4, 'REJECTED'),
('High income and good collateral', 2, 5, 'APPROVED'),
('Moderate income and low credit score', 2, 6, 'PENDING');

INSERT INTO loan (loan_application_id, borrower_id, principal_amount, total_payable, interest_rate, date_created, start_date, end_date, status) VALUES
(1, 10, 15000, 390000, 2, '2020-01-19', '2020-01-27', '2022-01-10', 'PENDING_DISBURSEMENT'),
(2, 5, 2000, 12000, 1.5, '2022-12-13', '2022-12-13', '2023-09-10', 'DISBURSED'),
(3, 6, 4350000, 5000000, 0.4, '2005-04-01', '2005-04-01', '2007-01-27', 'REPAID'),
(4, 9, 450000, 9000000, 10, '1998-01-07', '1998-01-07', '2000-01-01', 'PENDING_DISBURSEMENT'),
(5, 1, 3700, 19000, 2.1, '2023-01-31', '2023-01-31', '2023-05-01', 'PENDING_DISBURSEMENT'),
(6, 7, 10000, 87000, 0.8, '2019-03-09', '2019-03-10', '2021-01-01', 'REPAID');

INSERT INTO loan_disbursement (loan_id, borrower_id, date_created, bank_account_number, bank_sort_code) VALUES
(1, 2, '2023-08-22', '89012345', '34-56-78'),
(2, 11, '2022-12-13', '34567890', '89-01-23'),
(4, 13, '2023-08-22', '78901234', '01-23-45'),
(6, 9, '1998-01-07', '67890123', '78-90-12');

INSERT INTO loan_repayment (loan_id, borrower_id, payment_date, amount)  VALUES
(6, 11, '2010-08-10', 100000),
(2, 9, '2023-03-31', 19000),
(1, 3, '2023-08-23', 87000);


-- NEW

insert into public.sys_user (id, first_name, last_name, ssn, email, phone_number, date_of_birth, comp_id)
values  (1, 'Alice', 'Smith', '123-45-6789', 'alice.smith@example.com', '(123) 456-7890', '1990-01-01', 3),
        (2, 'Bob', 'Jones', '234-56-7890', 'bob.jones@example.com', '(234) 567-8901', '1991-02-02', 1),
        (3, 'Charlie', 'Brown', '345-67-8901', 'charlie.brown@example.com', '(345) 678-9012', '1992-03-03', 5),
        (4, 'David', 'Green', '456-78-9012', 'david.green@example.com', '(456) 789-0123', '1993-04-04', 2),
        (5, 'Eve', 'White', '567-89-0123', 'eve.white@example.com', '(567) 890-1234', '1994-05-05', 4),
        (6, 'Frank', 'Black', '678-90-1234', 'frank.black@example.com', '(678) 901-2345', '1995-06-06', 7),
        (7, 'Grace', 'Lee', '789-01-2345', 'grace.lee@example.com', '(789) 012-3456', '1996-07-07', 8),
        (8, 'Harry', 'Potter', '890-12-3456', 'harry.potter@example.com', '(890) 123-4567', '1997-08-08', 2),
        (9, 'Iris', 'Wang', '901-23-4567', 'iris.wang@example.com', '(901) 234-5678', '1998-09-09', 9),
        (10, 'Jack', 'Chen', '012-34-5678', 'jack.chen@example.com', '(012) 345-6789', '1999-10-10', 5),
        (11, 'Kate', 'Wilson', '514-14-8905', 'kate.wilson@example.com', '(514) 456-7890', '2000-01-01', 2),
        (12, 'Leo', 'Garcia', '690-05-5315', 'leo.garcia@example.com', '(690) 567-8901', '2001-02-02', 10),
        (13, 'Mary', 'Johnson', '421-37-1396', 'mary.johnson@example.com', '(421) 678-9012', '2002-03-03', 6),
        (14, 'Nick', 'Miller', '458-02-6124', 'nick.miller@example.com', '(458) 789-0123', '2003-04-04', 9),
        (15, 'Olivia', 'Davis', '612-20-6832', 'olivia.davis@example.com', '(612) 890-1234', '2004-05-05', 2),
        (16, 'Peter', 'Parker', '300-62-3266', 'peter.parker@example.com', '(300) 901-2345', '2005-06-06', 3),
        (17, 'Quinn', 'Taylor', '660-03-8360', 'quinn.taylor@example.com', '(660) 012-3456', '2006-07-07', 5),
        (18, 'Ryan', 'Smith', '213-46-8915', 'ryan.smith@example.com', '(213) 123-4567', '2007-08-08', 1),
        (19, 'Sophia', 'Lee', '449-48-3135', 'sophia.lee@example.com', '(449) 234-5678', '2008-09-09', 10),
        (20, 'Tom', 'Brown', '559-81-1301', 'tom.brown@example.com', '(559) 345-6789 ', '2009-10-10', 1),
        (21, 'James', 'Brown', '222-12-1231', 'jb@abloanservices.co.uk', '(44) 712-1232', '1990-08-30', 12),
        (22, 'Tobi', 'Alao', '222-12-1232', 'tobi@abloanservices.co.uk', '(44) 712-1234', '1990-01-01', 12),
        (23, 'Jack', 'Jones', '222-12-1233', 'jackjones@yahoo.com', '(44) 712-1235', '1993-08-30', 12);


insert into company_official (id, role, supervisor_id)
values  (15, 'SUPERVISOR', null),
        (16, 'ADMIN', 15),
        (17, 'MARKETER', 16),
        (18, 'MARKETER', 16),
        (19, 'MARKETER', 16),
        (20, 'MARKETER', 16),
        (21, 'SUPERVISOR', null),
        (22, 'MARKETER', 21);


insert into borrower (id, address, photo_id, kyc_completed, bank_account_number, bank_sort_code)
values  (1, ('Main Street',123,'London,UK'), 'PHOTO-1234', '1', '12345678', '12-34-56'),
        (2, ('High Road',456,'Manchester,UK'), 'PHOTO-5678', '0', '87654321', '65-43-21'),
        (3, ('Park Avenue',789,'Liverpool,UK'), 'PHOTO-9012', '1', '23456789', '23-45-67'),
        (4, ('Broadway', 1011,'Birmingham,UK'), 'PHOTO-3456', '0', '98765432', '76-54-32'),
        (5, ('Elm Street',1213,'Leeds,UK'), 'PHOTO-3016', '1', '34567890', '34-56-78'),
        (6, ('King Road',1415,'Glasgow,UK'), 'PHOTO-1235', '0', '45678901', '45-67-89'),
        (7, ('Queen Street',1617,'Edinburgh,UK'), 'PHOTO-5679', '1', '56789012', '56-78-90'),
        (8, ('Prince Avenue',1819,'Cardiff,UK'), 'PHOTO-9013', '0', '67890123', '67-89-01'),
        (9, ('Princess Lane',2021,'Bristol,UK'), 'PHOTO-3457', '1', '78901234', '78-90-12'),
        (10, ('Duke Street',2223,'Belfast,UK'), 'PHOTO-7891', '0', '89012345', '89-01-23'),
        (11, ('Park Avenue',789,'Birmingham,UK'), 'PHOTO-1236', '1', '90123456', '90-12-34'),
        (12, ('Queen Street',112,'Edinburgh,UK'), 'PHOTO-5680', '0', '01234567', '01-23-45'),
        (13, ('Church Road',131,'Bristol,UK'), 'PHOTO-9014', '1', '12340987', '12-34-09'),
        (14, ('Bridge Street',161,'Glasgow,UK'), 'PHOTO-3458', '0', '23450123', '23-45-01'),
        (23, ('Top Street',152,'Birmingham,England'), 'PHOTO-3455', '1', '23450124', '23-45-02');

insert into approval_group (id, group_name, comp_id, loan_package_id)
values  (1, 'Gold Team', 1, 1),
        (2, 'Silver Team', 1, 2),
        (3, 'Bronze Team', 1, 3),
        (4, 'Red Team', 2, 4),
        (5, 'Blue Team', 2, 5),
        (6, 'Green Team', 2, 6),
        (7, 'Emerald Team', 10, 7),
        (8, 'Sapphire Team', 10, 8),
        (9, 'Pearl Team', 6, 9),
        (10, 'Opal Team', 4, 10),
        (11, 'Car Loan Servicing Team', 12, 13);

insert into approval_user_group (id, group_id, company_official_id)
values  (1, 1, 15),
        (2, 1, 16),
        (3, 1, 17),
        (4, 2, 18),
        (5, 2, 19),
        (6, 2, 20),
        (7, 11, 22);

insert into loan_application (id, application_no, amount, interest_rate, date_created, start_date, end_date, borrower_id, loan_package_id, comp_id, status)
values  (1, 10123456, 10000, 1, '2019-12-12', '2021-02-01', '2021-05-01', 2, 1, 1, 'PENDING'),
        (2, 10123457, 30000, 5, '2018-10-09', '2018-10-09', '2023-10-09', 4, 4, 2, 'APPROVED'),
        (3, 10123458, 5000000, 0.03, '2021-02-01', '2021-02-01', '2022-02-01', 8, 5, 2, 'REJECTED'),
        (4, 10123459, 900000, 0.7, '2016-01-02', '2017-03-02', '2018-03-02', 11, 6, 2, 'PENDING'),
        (5, 10123461, 8000, 3, '2014-02-09', '2015-02-09', '2019-02-09', 5, 10, 4, 'PENDING'),
        (6, 10123464, 1000000, 0.05, '2023-01-01', '2023-01-01', '2023-12-31', 13, 9, 6, 'REJECTED'),
        (7, 100000045, 10000, 4, '2023-08-14', '2023-08-21', '2024-08-21', 23, 13, 12, 'PENDING'),
        (8, 100000046, 120000, 5, '2023-08-14', '2023-08-21', '2025-08-21', 23, 14, 12, 'APPROVED');

insert into loan_approval (id, comments, approval_group_id, loan_application_id, approval_status)
values  (1, 'Good credit score and income', 1, 1, 'APPROVED'),
        (2, 'Low income but high collateral', 1, 2, 'APPROVED'),
        (3, 'Bad credit score and low income', 1, 3, 'REJECTED'),
        (4, 'Missing documents', 2, 4, 'REJECTED'),
        (5, 'High income and good collateral', 2, 5, 'APPROVED'),
        (6, 'Moderate income and low credit score', 2, 6, 'PENDING'),
        (7, null, null, 7, 'PENDING'),
        (8, 'Good credit history and validated KYC', 11, 8, 'APPROVED');

insert into loan (id, loan_application_id, borrower_id, principal_amount, total_payable, interest_rate, date_created, start_date, end_date, status)
values  (1, 1, 10, 15000, 390000, 2, '2020-01-19', '2020-01-27', '2022-01-10', 'PENDING_DISBURSEMENT'),
        (2, 2, 5, 2000, 12000, 1.5, '2022-12-13', '2022-12-13', '2023-09-10', 'DISBURSED'),
        (3, 3, 6, 4350000, 5000000, 0.4, '2005-04-01', '2005-04-01', '2007-01-27', 'REPAID'),
        (5, 5, 1, 3700, 19000, 2.1, '2023-01-31', '2023-01-31', '2023-05-01', 'PENDING_DISBURSEMENT'),
        (6, 6, 7, 10000, 87000, 0.8, '2019-03-09', '2019-03-10', '2021-01-01', 'REPAID'),
        (7, 8, 23, 120000, 150000, 5, '2023-08-20', '2023-08-01', '2024-08-01', 'DISBURSED'),
        (4, 4, 9, 450000, 9000000, 10, '1998-01-07', '1998-01-07', '2000-01-01', 'DISBURSED');

insert into loan_disbursement (id, loan_id, borrower_id, date_created, bank_account_number, bank_sort_code)
values  (1, 1, 2, '2023-08-22', '89012345', '34-56-78'),
        (2, 2, 11, '2022-12-13', '34567890', '89-01-23'),
        (3, 4, 13, '2023-08-22', '78901234', '01-23-45'),
        (4, 6, 9, '1998-01-07', '67890123', '78-90-12'),
        (5, 7, 23, '2023-08-20', '23450124', '44-55-24');

insert into loan_repayment (id, loan_id, borrower_id, payment_date, amount)
values  (1, 6, 11, '2010-08-10', 100000),
        (2, 2, 9, '2023-03-31', 19000),
        (3, 1, 3, '2023-08-23', 87000),
        (4, 7, 23, '2023-08-23', 5000),
        (5, 7, 23, '2023-08-23', 1000);