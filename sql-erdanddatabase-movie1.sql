create table movies(
	movie_id SERIAL primary key,
	title VARCHAR(150),
	show_time TIME(7),
	seat_number VARCHAR(3)
);

create table concessions(
	order_number SERIAL primary key,
	item_name VARCHAR(150),
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2)
);

create table tickets(
	ticket_number SERIAL primary key,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	movie_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id)
);

create table customers(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	ticket_number INTEGER not null,
	order_number INTEGER not null,
	foreign key(ticket_number) references tickets(ticket_number),
	foreign key(order_number) references concessions(order_number)
);



