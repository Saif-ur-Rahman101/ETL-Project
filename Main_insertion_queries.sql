--INSERT INTO Dim_album
--SELECT album_id, title
--from MusicStore.dbo.album


--INSERT INTO Dim_artist
--SELECT artist_id, [name]
--from MusicStore.dbo.artist


--Insert into Dim_Employees
--select employee_id, first_name + ' ' + last_name as EmployeeName, Title, City, [state], Country
--from MusicStore.dbo.Employee

--Insert into Dim_genre
--select genre_id, [name]
--from MusicStore.dbo.genre

--Insert into Dim_media_type
--select media_type_id, [name]
--from MusicStore.dbo.media_type

--Insert into Dim_playlist
--select playlist_id, [name]
--from MusicStore.dbo.playlist

--INSERT INTO Dim_Customer
--SELECT customer_id, first_name + ' ' + last_name as CustomerName, Company, City, [state], Country
--from MusicStore.dbo.Customer

--Insert into Dim_track
--select track_id, [name], composer
--from MusicStore.dbo.track

--insert into Dim_Date
--select myDate.UniqueDate, DATEPART(year, mydate.UniqueDate),
--datepart(month, myDate.UniqueDate), DATEPART(day, myDate.UniqueDate),
--datename(month, myDate.UniqueDate), DATEname(WEEKDAY, myDate.UniqueDate),
--datepart(WEEK, myDate.UniqueDate)
--from
--(select Distinct invoice_date as UniqueDate
--from MusicStore.dbo.invoice) as myDate



--INSERT INTO Fact_Sales
--SELECT	i.invoice_id,
--		(SELECT DateId FROM Dim_Date WHERE Date = i.invoice_date), il.invoice_line_id,
--		i.billing_city, i.billing_state, i.billing_country,
--		il.unit_price, il.quantity, (il.unit_price * il.quantity) as revenue, t.album_id, a.artist_id, i.customer_id, c.support_rep_id, t.genre_id, t.media_type_id, t.track_id
--FROM	MusicStore.dbo.invoice i
--INNER JOIN MusicStore.dbo.invoice_line il 
--ON i.invoice_id = il.invoice_id
--INNER JOIN MusicStore.dbo.track t
--ON t.track_id = il.track_id
--INNER JOIN MusicStore.dbo.album a
--ON t.album_id = a.album_id
--INNER JOIN MusicStore.dbo.customer c
--ON c.customer_id = i.customer_id
--order by invoice_id, invoice_line_id



