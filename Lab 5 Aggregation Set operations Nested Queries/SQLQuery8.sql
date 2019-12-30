Select * from [card]
Select * from [usercard]
Select * from [user]

select name 
from [User]
where userid =(select userid
				from [usercard]
				where cardnum =(select cardnum 
								from [card]
								where balance=(select max(balance)
								from [card] 
								)))