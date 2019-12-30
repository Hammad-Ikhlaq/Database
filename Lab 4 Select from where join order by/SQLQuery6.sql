Select * from [User]
Select * from UserCard
Select * from [Card]
SELECT city
FROM [User] 
join UserCard
on [user].userid=usercard.userid
join [card]
on usercard.cardnum=[Card].cardnum
where ([Card].balance>=20000 and [Card].balance<=35000)