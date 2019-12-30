Select * from [User]
Select * from UserCard
Select * from [Card]
Select * from CardType
Select * from [Transaction]
Select * from TransactionType
SELECT [user].name,UserCard.cardNum,
FROM [User] 
join UserCard
ON [user].userid=usercard.userid
where cardnum like'%6'