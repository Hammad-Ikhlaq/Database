begin tran
update emp set Salary=999 where ID=1
waitfor delay '00:00:15'
rollback