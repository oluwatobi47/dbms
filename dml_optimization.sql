
SELECT *
FROM company c
WHERE NOT EXISTS (
  SELECT 1
  FROM sys_user
  WHERE sys_user.comp_id = c.id
) order by establishment_date ASC;

SELECT company.*
FROM company
WHERE NOT EXISTS (
  SELECT 1
  FROM loan_package
  WHERE loan_package.comp_id = company.id
) order by establishment_date ASC;


SELECT address.*
FROM company_office_address address
WHERE comp_id = 1;

SELECT loan_application.*
FROM loan_application
WHERE loan_application.status = 'PENDING';

select *
FROM loan_package lp
WHERE lp.comp_id = 1 and lp.flag = 'ENABLED';

SELECT loan_application.*
FROM loan_application
WHERE loan_application.status = 'PENDING' and COMP_ID = 1;

select * from company;
select * from sys_user where comp_id = 12;
select * from loan_package where comp_id = 12;

SELECT loan_application.*
FROM loan_application
WHERE loan_application.borrower_id = 1;


select * from loan_package lp where not exists(
    SELECT 1 from approval_group ag
             WHERE
        lp.id = ag.loan_package_id
) and lp.comp_id = 12;

-- Get all approval groups without users
select * from approval_group ag where not exists(
    SELECT 1 from approval_user_group aug
             WHERE
        aug.group_id = ag.id
) and ag.comp_id = 2;

select * from loa


-- LOAN PACKAGE: 13 -CAR 4%
-- LOAN PACKAGE: 14 -MORTGAGE 5%

-- COMP 12
-- BORROWER: 13



-- Get
SELECT sys_user.*
FROM sys_user
INNER JOIN borrower
ON sys_user.id = borrower.id
WHERE borrower.id = 1;

-- Get borrower loan_application history --
SELECT loan_application.*
FROM loan_application
WHERE loan_application.borrower_id = 2;

-- Get current borrower loan records --
SELECT loan.*
FROM loan
WHERE loan.borrower_id = 2;

-- Get borrower loan repayment history --
SELECT loan_repayment.*
FROM loan_repayment
WHERE loan_repayment.loan_id = 1;

-- Get borrower loans not disbursed --
SELECT loan.*
FROM loan
WHERE loan.borrower_id = 2 AND loan.status = 'PENDING_DISBURSEMENT';

SELECT loan_package.id, loan_package.name, loan_package.flag, approval_group.group_name, approval_group.id
FROM loan_package
JOIN approval_group
ON loan_package.id = approval_group.loan_package_id
WHERE loan_package.comp_id = 1
GROUP BY loan_package.id, approval_group.id;


SELECT lp.id, lp.name, COUNT(approval_group.id) AS num_approval_groups
FROM loan_package lp
LEFT JOIN approval_group
ON lp.id = approval_group.loan_package_id
WHERE lp.comp_id = 1
GROUP BY lp.id order by num_approval_groups;

SELECT loan_application.*
FROM loan_application
WHERE loan_application.status = 'PENDING';


-- TODO: Get all borrowers defaulting on payment

select loan.id as loanId, concat(su.first_name, ' ', su.last_name) as name , su.email, su.phone_number, br.photo_id,  loan.status, loan.principal_amount, loan.total_payable, ld.date_created
from loan
    join loan_disbursement ld on loan.id = ld.loan_id
    join borrower br on loan.borrower_id = br.id
    join sys_user su on br.id = su.id
where not exists(select 1 from loan_repayment lr where lr.loan_id = loan.id)
order by loan.end_date ASC;

select concat(su.first_name, ' ', su.last_name) as name, loan.id as loanId, su.email, su.phone_number, br.photo_id,  loan.status, loan.principal_amount, loan.total_payable, ld.date_created
from loan
    join loan_disbursement ld on loan.id = ld.loan_id
    join borrower br on loan.borrower_id = br.id
    join sys_user su on br.id = su.id
where not exists(select 1 from loan_repayment lr where lr.loan_id = loan.id)
order by loan.end_date ASC;


select concat(su.first_name, ' ', su.last_name) as name , su.email, loan.id as loanId, loan.status, loan.principal_amount, loan.total_payable, sum(lr.amount) as total_paid, loan.total_payable - sum(lr.amount) as outstanding_payment, ld.date_created as disbursement_date
from loan
    join loan_repayment lr on loan.id = lr.loan_id
    join loan_disbursement ld on loan.id = ld.loan_id
    join borrower br on loan.borrower_id = br.id
    join sys_user su on br.id = su.id
where su.email = 'jackjones@yahoo.com'
group by loan.id, su.first_name, su.last_name, su.email, loan.status, loan.principal_amount, loan.total_payable, ld.date_created
order by ld.date_created;

insert into loan_repayment( loan_id, borrower_id, payment_date, amount)
values (7, 23, '2023-08-23', 1000);

-- Q1
EXPLAIN ANALYZE select concat(su.first_name, ' ', su.last_name) as name , su.email, loan.id as loanId, loan.status, loan.principal_amount, loan.total_payable, sum(lr.amount) as total_paid, loan.total_payable - sum(lr.amount) as outstanding_payment, ld.date_created as disbursement_date
from loan
    join loan_repayment lr on loan.id = lr.loan_id
    join loan_disbursement ld on loan.id = ld.loan_id
    join borrower br on loan.borrower_id = br.id
    join sys_user su on br.id = su.id
where su.email = 'jackjones@yahoo.com'
group by loan.id, su.first_name, su.last_name, su.email, loan.status, loan.principal_amount, loan.total_payable, ld.date_created
order by ld.date_created;

-- Q2
EXPLAIN ANALYZE select concat(su.first_name, ' ', su.last_name) as name, loan.id as loanId, su.email, su.phone_number, br.photo_id,  loan.status, loan.principal_amount, loan.total_payable, ld.date_created
from loan
    join loan_disbursement ld on loan.id = ld.loan_id
    join borrower br on loan.borrower_id = br.id
    join sys_user su on br.id = su.id
where not exists(select 1 from loan_repayment lr where lr.loan_id = loan.id)
order by loan.end_date ASC;

-- Q3
EXPLAIN ANALYZE
select usr.ID, concat(usr.last_name, ' ', usr.first_name) as Name, usr.email, AG.group_name from LOAN_APPROVAL la
join APPROVAL_GROUP AG on la.APPROVAL_GROUP_ID = AG.ID
join APPROVAL_USER_GROUP AUG on AG.ID = AUG.GROUP_ID
join sys_user usr on AUG.COMPANY_OFFICIAL_ID = usr.ID
WHERE la.LOAN_APPLICATION_ID = 1;


select usr.ID,concat(usr.last_name, ' ', usr.first_name) as Name, co.supervisor_id, usr.email, AG.group_name from LOAN_APPROVAL la
join APPROVAL_GROUP AG on la.APPROVAL_GROUP_ID = AG.ID
join APPROVAL_USER_GROUP AUG on AG.ID = AUG.GROUP_ID
join sys_user usr on AUG.COMPANY_OFFICIAL_ID = usr.ID
join company_official co on AUG.COMPANY_OFFICIAL_ID = co.ID
WHERE la.LOAN_APPLICATION_ID = 1;

sele


select usr.ID, concat(usr.last_name, ' ', usr.first_name) as Name, usr.email, AG.group_name from LOAN_APPROVAL la
join APPROVAL_GROUP AG on la.APPROVAL_GROUP_ID = AG.ID
join APPROVAL_USER_GROUP AUG on AG.ID = AUG.GROUP_ID


-- Q4
EXPLAIN ANALYSE
SELECT lp.id, lp.name, COUNT(approval_group.id) AS num_approval_groups
FROM loan_package lp
LEFT JOIN approval_group
ON lp.id = approval_group.loan_package_id
WHERE lp.comp_id = 1
GROUP BY lp.id order by num_approval_groups;

SELECT schemaname, indexname, tablename
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY indexname;

CREATE INDEX borrower_indx_loan ON loan (borrower_id);
CREATE INDEX borrower_indx_dis ON loan_disbursement (borrower_id);
CREATE INDEX borrower_indx_rep ON loan_repayment (borrower_id);
CREATE INDEX loan_indx ON loan_disbursement (loan_id);
CREATE INDEX loan_package_indx_app ON loan_application (loan_package_id);
CREATE INDEX loan_package_indx_apg ON approval_group (loan_package_id);


SELECT su.*, b.bank_account_number, b.bank_sort_code, b.address.country, b.kyc_completed
FROM borrower b join sys_user su on b.id = su.id
WHERE b.id = 1;

select concat(su.first_name, ' ', su.last_name) as Name, su.ssn, su.phone_number, su.email, (b.address).postcode, (b.address).city, (b.address).country, b.kyc_completed, concat(b.bank_account_number, ' (',b.bank_sort_code, ')')  AS "Bank Account"
from sys_user su join borrower b on su.id = b.id
where su.email = 'jackjones@yahoo.com';

SELECT loan_application.*
FROM loan_application
    join borrower b on b.id = loan_application.borrower_id
    join sys_user su on su.id = b.id
WHERE su.email = 'jackjones@yahoo.com';

SELECT lp.*
FROM loan_repayment lp
    join borrower b on b.id = lp.borrower_id
    join sys_user su on su.id = b.id
WHERE su.email = 'jackjones@yahoo.com';

select * from lao