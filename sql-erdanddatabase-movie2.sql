insert into movies(
	movie_id,
	title,
	show_time,
	seat_number
) values (
	1,
	'Shrek',
	'13:30',
	'34D'
);

insert into concessions (
	order_number,
	item_name,
	sub_total,
	total_cost
) values (
	1,
	'Popcorn',
	'6.99',
	'7.49'
);

select * from concessions;

insert into tickets(
	ticket_number,
	sub_total,
	total_cost,
	movie_id
) values (
	1,
	'11.50',
	'12.33',
	1
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	email,
	ticket_number,
	order_number
) values (
	1,
	'Daniel',
	'Smith',
	'dsmith@yahoo.com',
	1,
	1
);

