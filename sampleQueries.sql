--show last 1 week performances.

create view last1week_shows –19.07.21 & 25.07.21

as
select show_name from show
where start_time>dateadd(day,-7,getdate())
select * from last1week_shows


--Total earnings from July 5-11
select sum(price) as torPrice_relatedDates from ticket_system
join show on ticket_system.show_id=show.show_id
where start_time<dateadd(day,-15,getdate()) and start_time>dateadd(day,-21,getdate())

--Which emp sold how much between 5-11 July?
select row_number() over(order by price desc) as highttolow_price,
show_name,price,per_name,venue_name,start_time
from ticket_system
join show on ticket_system.show_id=show.show_id
join person on ticket_system.emp_id=person.per_id
join venue on ticket_system.venue_id=venue.venue_id
where start_time<dateadd(day,-15,getdate()) and start_time>dateadd(day,-21,getdate())

--Which is the highest grossing movie?
select top 1 show_name
from ticket_system
join show on ticket_system.show_id=show.show_id
where start_time<dateadd(day,-15,getdate()) and start_time>dateadd(day,-21,getdate())

--5-11 july most preferred venue
select top 1 venue_name
from ticket_system
join show on ticket_system.show_id=show.show_id
join venue on ticket_system.venue_id=venue.venue_id
where start_time<dateadd(day,-15,getdate()) and start_time>dateadd(day,-21,getdate())

--Rank the top 10 highest-grossing movies by row number between July 5-11
with top10show as
(
select row_number() over(order by price desc) [row], show_name,venue_name,price from ticket_system
join show on ticket_system.show_id=show.show_id
join venue on ticket_system.venue_id=venue.venue_id
where start_time<dateadd(day,-15,getdate()) and start_time>dateadd(day,-21,getdate())
)

select *
from top10show
where row between 1 and 10

--update;in show name=cruella, the price was recorded incorrectly. (real price 45) make 30 to 45
update ticket_system set price=45 where show_id=3

select show_name,price from ticket_system
join show on ticket_System.show_id=show.show_id
where show_name='Cruella'
