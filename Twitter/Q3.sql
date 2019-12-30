
--Functionality 3: Trending Hashtags
Create View Trending_Hashtags
as 
select top 3 hashtags.hashtag,COUNT(*) [HashtagOccurance] 
From hashtags inner join tweets on  tweets.[text] like '%'+hashtags.hashtag+'%'
group by hashtags.hashtag
order by [HashtagOccurance] desc
go

select * from  Trending_Hashtags