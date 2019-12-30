set transaction isolation level repeatable read
begin tran
select * from Emp where ID in(1,2)
waitfor delay '00:00:15'
select * from Emp where ID in(1,2)
rollback
