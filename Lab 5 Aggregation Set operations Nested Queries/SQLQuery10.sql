Select * from [user]
Select * from [usercard]
Select * from [card]

select name,userid 
from [user] 
where userid in(select userid
				from [Usercard]
				where cardnum in(select	cardnum
								from [card]
								except
								select cardnum
								from [card]
								where expiredate<[expireDate]))