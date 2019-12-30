set transaction isolation level serializable
begin tran
select * from Emp
waitfor delay '00:00:15'
select * from Emp
rollback