Select * from [User]
Select * from UserCard
Select * from [Card]
SELECT [user].name,[user].phoneNum
FROM [User] 
join UserCard
ON [user].usertype=usercard.userid
join [Card]
ON [card].cardnum=usercard.cardnum
where expireDate <'2-2-2019'