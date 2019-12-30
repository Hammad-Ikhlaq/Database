Select * from [User]
Select * from UserCard
Select * from [Transaction]
SELECT [user].userid,[user].name,usercard.cardnum
FROM [User] 
join UserCard
ON [user].userid=usercard.userid
join [Transaction]
ON UserCard.cardnum=[Transaction].cardNum
where transDate = current_timestamp