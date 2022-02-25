drop table a_orders;
drop table a_shipment;
drop table a_users;
drop table a_product;
drop table a_categories;
drop table a_sub; 

create table a_categories (
	caid serial primary key,
	cname varchar(255) not null unique,
	createdAt time,
	updatedAt time
);

create table a_sub (
	suid serial primary key,
	suname varchar(255) not null unique,
	createdAt time,
	updatedAt time
);

create table a_product (
	pid serial primary key,
	pname varchar(255),
	category varchar(255) references a_categories(cname),
	quantity int,
	images text [],
	sold int,
	rating float not null,
	description varchar(255),
	price int,
	slug varchar(255),
	subc varchar(255) references a_sub(suname),
	createdAt time,
	updatedAt time
);

create table a_users (
	uid serial primary key,
	name varchar(255) Not Null,
	email varchar(255) Not Null unique,
	role varchar(255) Not Null default 'user',
	phone int,
	cart int references a_product(pid),
	address text [],
	wishlist integer references a_product(pid),
	createdAt time,
	updatedAt time
);

create table a_shipment (
	shid serial primary key,
	sh_company varchar(255) not null,
	contact_name varchar(255) not null,
	contact_number int not null,
	contact_email varchar(255) unique not null,
	createdAt time,
	updatedAt time
);

create table a_orders (
	oid serial primary key,
	uid int references a_users(uid),
	pid int references a_product(pid),
	shid int references a_shipment(shid),
	delivered bool default 'False',
	createdAt time,
	updatedAt time
)