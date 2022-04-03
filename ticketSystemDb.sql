create table ticket_system(
		tno int primary key,
		show_id int,
		price int,
		venue_id int,
		hall_id int,
		emp_id int,
		customer_id int, 
	)

	create table person(
		per_id int primary key,
		rol_id int,
		per_name nvarchar(30),
		per_sname nvarchar(30),
		per_mail nvarchar(30)
	)

	create table rol(
		rol_id int primary key,
		rol_name nvarchar(30)
	)


	create table bankAccount(
		bankAccount_id int primary key,
		customer_id int,
		amoney int
	)


	create table venue(
		venue_id int primary key,
		venue_name nvarchar(30),
	)

	create table hall(
		hall_id int primary key,
		hall_num int,
		venue_id int,
		seat_num int,
		seat_letter nvarchar(5),
	)

	create table show(
		show_id int primary key,
		show_name nvarchar(100),
		show_type_id int,
		start_time datetime,
		end_time datetime
	)

	create table show_type(
		show_type_id int primary key,
		show_type_name nvarchar(30)
	)

	INSERT INTO rol(rol_id,rol_name) VALUES (1,'Customer')
	INSERT INTO rol(rol_id,rol_name) VALUES (2,'Employee')

	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130150,10001,500)
	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130428,2007,100)
	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130427,2002,5000)
	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130426,2008,501)
	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130429,2009,700)
	INSERT INTO bankAccount (bankAccount_id,customer_id,amoney) VALUES (130430,2001,1000)

	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (10001,1,'Amelia','Johnson', 'amelia.johnson@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2001,1,'Olivia','Garcia', 'olivia.garcia@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2002,1,'Emma','Davis', 'emma.davis@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2008,1,'William','Miller','william.miller@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2003,2,'Mia','Robinson', 'mia.robinson@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2009,1,'Sophia','Lewis','sophia.lewis@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2004,2,'Alexander','Hall','alexander.hall@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2006,2,'Evelyn','Garcia','evelyn.garcia@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2005,2,'Benjamin','Clark','benjamin.clark@tixed.com')
	INSERT INTO person(per_id,rol_id,per_name,per_sname,per_mail) VALUES (2007,1,'Liam','Perez','liam.perez@tixed.com')


	INSERT INTO show_type(show_type_id,show_type_name) VALUES (1,'Cinema')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (2,'Theatre')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (3,'Seminer')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (4,'Standup')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (5,'Concert')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (6,'Magic')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (7,'Opera')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (8,'Balet')
	INSERT INTO show_type(show_type_id,show_type_name) VALUES (9,'Musical')

	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (1,'Black Widow',1,convert(datetime,'21-07-05 17:30:00',5),convert(datetime,'21-07-05 19:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (2,'Fast and Furious 9',1,convert(datetime,'21-07-06 11:20:00',5),convert(datetime,'21-07-06 12:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (3,'Cruella',1,convert(datetime,'21-07-07 12:40:00',5),convert(datetime,'21-07-07 14:10:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (4,'Cem Yılmaz',4,convert(datetime,'21-07-10 20:00:00',5),convert(datetime,'21-07-10 00:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (5,'Ata Demirel',4,convert(datetime,'21-07-23 19:00:00',5),convert(datetime,'21-07-23 23:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (6,'Alice Musical',9,convert(datetime,'21-07-10 20:00:00',5),convert(datetime,'21-07-10 22:30:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (7,'Swan Lake Ballet',8,convert(datetime,'21-07-08 16:40:00',5),convert(datetime,'21-07-08 18:10:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (8,'Nutcracker Ballet',8,convert(datetime,'21-07-29 20:00:00',5),convert(datetime,'21-07-29 00:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (9,'Vivaldi A Minor Violin Concerto',5,convert(datetime,'21-07-17 15:30:00',5),convert(datetime,'21-07-17 17:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (10,'Sarasate Carmen Fantasy, Op. 25',5,convert(datetime,'21-07-07 20:00:00',5),convert(datetime,'21-07-07 23:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (11,'Romeo & Juliet',2,convert(datetime,'21-07-06 18:30:00',5),convert(datetime,'21-07-06 21:00:00',5))
	INSERT INTO show (show_id,show_name,show_type_id,start_time,end_time) VALUES (12,'David Copperfield Magic',6,convert(datetime,'21-07-17 19:30:00',5),convert(datetime,'21-07-17 23:00:00',5))

	INSERT INTO venue (venue_id,venue_name) VALUES (1,'Arcadium Sinemaları')
	INSERT INTO venue (venue_id,venue_name) VALUES (2,'Ankara Yeni Sahne')
	INSERT INTO venue (venue_id,venue_name) VALUES (3,'Ankara Kültür Sanat Tiyatrosu')
	INSERT INTO venue (venue_id,venue_name) VALUES (4,'Devlet Opera Ve Balesi')
	INSERT INTO venue (venue_id,venue_name) VALUES (5,'Leyla Gencer Sahnesi')
	INSERT INTO venue (venue_id,venue_name) VALUES (6,'Gordion Cinemaximum')
	INSERT INTO venue (venue_id,venue_name) VALUES (7,'Ankamall Cinemaximum')
	INSERT INTO venue (venue_id,venue_name) VALUES (8,'Kentpark Cinemaximum')
	INSERT INTO venue (venue_id,venue_name) VALUES (9,'Atlantis Cinemaximum')
	INSERT INTO venue (venue_id,venue_name) VALUES (10,'Korkut Ata Kültür Merkezi')
	INSERT INTO venue (venue_id,venue_name) VALUES (11,'Route Ankara') --for standup
	INSERT INTO venue (venue_id,venue_name) VALUES (12,'Fade Stage & Coffee') --for standup

	select * from venue

	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (1,1,1,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (2,1,1,4,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (3,1,1,5,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (4,2,1,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (5,2,1,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (6,2,1,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (7,3,1,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (8,3,1,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (9,3,1,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (10,1,2,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (11,2,2,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (55,3,2,5,'D')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (56,1,2,4,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (12,3,3,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (13,1,3,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (14,2,3,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (15,3,2,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (16,1,4,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (17,2,4,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (18,3,4,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (54,4,4,4,'D')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (19,1,5,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (20,2,5,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (21,3,5,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (22,1,6,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (23,1,6,4,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (24,1,6,5,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (25,2,6,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (26,2,6,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (27,2,6,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (28,3,6,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (29,3,6,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (30,3,6,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (31,1,7,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (32,1,7,4,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (33,1,7,5,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (34,2,7,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (35,2,7,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (36,2,7,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (37,3,7,3,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (38,3,7,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (39,3,7,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (40,1,8,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (41,2,8,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (42,3,8,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (43,1,9,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (44,2,9,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (45,3,9,4,'C')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (46,1,10,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (47,2,10,5,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (48,4,11,17,'H')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (49,5,11,20,'G')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (50,6,8,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (51,7,9,5,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (52,8,1,12,'F')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (53,9,12,12,'F')

	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (57,1,12,1,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (58,1,12,12,'A')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (59,1,12,12,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (60,1,12,15,'B')
	INSERT INTO hall (hall_id,hall_num,venue_id,seat_num,seat_letter) VALUES (61,1,12,20,'C')

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1001,1,25,6,33,2006,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1002,1,25,6,22,2004,10001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1003,1,25,7,31,2006,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1004,1,25,7,32,2006,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1005,1,25,8,40,2003,2007)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1234,1,25,8,43,2003,2009)

	
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2003,2,30,1,3,2004,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2001,2,30,1,4,2004,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2002,2,30,7,39,2006,10001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2004,2,30,7,38,2006,2009)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (3002,3,20,1,1,2004,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (3001,3,25,1,2,2004,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (3004,3,20,1,5,2004,2007)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (3003,3,30,1,6,2004,2002)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (4001,4,800,4,16,2006,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (4002,4,800,4,17,2006,10001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (4003,4,800,3,28,2004,2002)
	

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (5005,5,500,4,18,2003,2009)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (5006,5,500,5,19,2005,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (5007,5,500,5,20,2004,2007)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (5008,5,500,3,12,2006,10001)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (6003,6,700,3,13,2006,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (6004,6,700,3,14,2006,2001)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (7003,7,900,2,15,2004,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (7004,7,900,2,10,2006,2008)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (8003,8,550,2,7,2004,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (8004,8,550,2,8,2004,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (8001,8,550,2,9,2004,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (8002,8,550,3,11,2006,2008)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (9003,9,1500,4,54,2003,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (9004,9,1500,10,46,2005,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (9005,9,1500,10,47,2005,2002)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1104,10,2000,2,55,2004,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1203,10,2000,2,56,2004,2002)


	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1603,11,600,11,48,2004,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1704,11,600,11,49,2006,2008)

	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (1903,12,200,12,57,2005,2002)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2104,12,200,12,58,2006,2008)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2203,12,200,12,59,2005,2001)
	INSERT INTO ticket_system(tno,show_id,price,venue_id,hall_id,emp_id,customer_id)  VALUES (2304,12,200,12,60,2006,10001)
