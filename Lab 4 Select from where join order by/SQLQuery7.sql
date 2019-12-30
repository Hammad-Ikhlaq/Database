Select * from [User]
Select * from UserCard
Select * from [Transaction]
SELECT [user].name
FROM [User] 
full join UserCard
ON [user].userid=usercard.userid
full join [Transaction]
on usercard.cardnum=[transaction].cardnum
where [Transaction].transType 
is NULL
