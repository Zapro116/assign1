insert into a_categories (cname,updatedAt,createdAt) 
values (('A',now(),now()),('B',now(),now()),('C',now(),now()));

insert into a_sub (suname,updatedAt,createdAt)
values (('a',now(),now()),('b',now(),now()),('c',now(),now()));

insert into a_shipment (sh_company,contact_name,contact_number,contact_email,updatedAt,createdAt)
values (
	('X','yash',112,'yash@X',now(),now()),('X','ash',121,'ash@X',now(),now()),('X','sh',211,'sh@X',now(),now()),
	('Y','guys',113,'guys@Y',now(),now()),('Y','uys',131,'uys@Y',now(),now()),('Y','ys',311,'ys@Y',now(),now()),
	('Z','chad',114,'chad@Z',now(),now()),('Z','had',141,'had@Z',now(),now()),('Z','ad',411,'ad@Z',now(),now()),
);

insert into a_product values (pname,category,subc,updatedAt,createdAt)
values (
	('Product_A','A','a',now(),now()),('Product_B','A','b',now(),now()),('Product_C','A','c',now(),now()),
	('Product_D','B','a',now(),now()),('Product_E','B','b',now(),now()),('Product_F','B','c',now(),now()),
	('Product_G','C','a',now(),now()),('Product_H','C','b',now(),now()),('Product_I','C','c',now(),now())
);

insert into a_users values (name,email,updatedAt,creadtedAt)
values (
	('User_A','a@user',now(),now()),('User_B','b@user',now(),now()),('User_C','c@user',now(),now()),
	('User_D','d@user',now(),now()),('User_E','e@user',now(),now()),('User_F','f@user',now(),now())
);

insert into a_orders values (uid,pid,shid,updatedAt,createdAt) 
values (
	(1,1,1,now(),now()),(6,1,2,now(),now()),(1,1,3,now(),now()),
	(5,2,1,now(),now()),(1,2,2,now(),now()),(1,1,1,now(),now()),
	(1,3,1,now(),now()),(3,2,3,now(),now()),(2,3,1,now(),now()),
);