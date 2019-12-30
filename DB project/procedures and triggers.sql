-- this procedure will get the books issued by the member whose id is given --
create procedure booksBorrowed @id int
as begin
	select bi.Book_ISBN as ISBN , b.Title,bi.IssueDate,bi.DueDate
	from BooksIssued bi join book b on bi.Book_ISBN=b.ISBN
	where bi.Member_Id= @id
end

-- procedure to search a book by title---
create procedure searchByTitle @title varchar(30)
as begin
	select * from book where title = @title

end

-- procedure to search a book by author---
create procedure searchByAuthor @author varchar(30)
as begin
	select * from book where author = @author

end

 -- procedure to search a book by ISBN---
create procedure searchByISBN @isbn char(13)
as begin
	select * from book where ISBN = @isbn

end

-- procedure to borrow a book---
create procedure issueBook @id int, @isbn char(13)
as begin
	insert into BooksIssued
	values (@id,@isbn,'','')		-- trigger will automatically handle the last two values --

end


-- procedure to queue a book---
create procedure queueBook @id int, @isbn char(13)
as begin
	insert into BookQueued
	values (@id,@isbn,'')		-- trigger will automatically handle the last value --

end

-- procedure to place a request for a book---
create procedure requestBook @id int, @isbn char(13),@title varchar(30),@author varchar(30)
as begin
	insert into BookRequest
	values (@id,@isbn,@title,@author)		-- trigger will automatically handle the last two values --

end

exec requestBook 1,956326,'power of habit','john smith'
select * from BookRequest
select * from Book
select * from Member
select * from BooksIssued