create database bank;
create table accounts(acc_id int unique, acc_name varchar(20) not null, amount float not null);
desc accounts;
insert into accounts(acc_id,acc_name,amount) values(1001,"chinni",40000),(1002,"vegi",50000),(1003,"jaanu",55000),(1004,"honey",45000);
select * from accounts;
use bank;
-- transfer 2000 from 1001 account
update accounts set amount=amount-2000 where acc_id=1001;
select * from accounts;

-- credit 2000 to 1002 account
update accounts set amount=amount+2000 where acc_id=1002;
select * from accounts;
-- with transaction
begin;
update accounts set amount=amount-2000 where acc_id=1001; -- debit
select * from accounts;
update accounts set amount=amount+2000 where acc_id=1005; -- credit
select * from accounts;
commit;
rollback;


begin;
-- transaction 1000 rupees from 1003 to 1001
update accounts set amount=amount-2000 where acc_id=1001; -- debit
select * from accounts;
update accounts set amount=amount+2000 where acc_id=1005; -- credit
select * from accounts;
commit;

savepoint sp1;


select * from accounts;
begin;
update accounts set amount=amount-2000 where acc_id=1001;
update accounts set amount=amount+2000 where acc_id=1002;
savepoint sp1;
update accounts set amount=amount-50000 where acc_id=1001;
update accounts set amount=amount+2000 where acc_id=1002;
rollback to sp1;