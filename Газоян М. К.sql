create table store (
  transaction_id integer primary key
  ,transaction_date timestamp 
  ,online_order bool
  ,order_status varchar(12)
  ,list_price float not null
  ,product_id integer not null
  ,customer_id integer not null
);

create table product (
  transaction_id integer 
  ,product_id integer 
  ,brand varchar(20)
  ,product_line  varchar(8)
  ,product_class varchar(6)
  ,product_size  varchar(6)
  ,standard_cost float
  ,primary key(transaction_id, product_id)
);

create table  customer( 
  customer_id integer primary key
  ,first_name  varchar(20) not null
  ,last_name varchar(20)
  ,gender  varchar(6)  
  ,DOB timestamp
  ,job_title varchar(50)
  ,job_industry_category varchar(40)
  ,wealth_segment varchar(30)
  ,deceased_indicator varchar(1)
  ,owns_car  varchar(3)
  ,address varchar(40)
  ,postcode  integer
  ,state varchar(20)
  ,country varchar(20)
  ,property_valuation integer
); 

insert into store(transaction_id,transaction_date,online_order,order_status,list_price,product_id ,customer_id) values 
	(1, '2017/02/25',False, 'Approved', 71.49, 2, 2950)
	,(2, '2017/05/21',True,	'Approved', 2091.47, 3, 3120)
	,(3, '2017/10/16',False,'Approved', 1793.43, 37,	402)
	,(4,'2017/08/31',False,'Approved', 1198.46,88,3135)
	,(5,'2017/10/01',True,	'Approved', 1765.3, 78, 787)
	,(6, '2017/03/08',True,	'Approved', 1538.99,25,	2339)
	,(7, '2017/04/21',	True,'Approved', 60.34, 22, 1542)
	,(8, '2017/07/15',	false,'Approved', 1292.84,15,	2459)
	,(9, '2017/08/10',	false,'Approved',1071.23 , 67	, 1305)
	,(10, '2017/08/30',	true,'Approved', 1231.15, 12	, 3262);
	
insert into product (transaction_id,product_id, brand, product_line,product_class,product_size,standard_cost) values 
	(1, 2, 'Solex', 'Standard',	'medium','medium', 53.62)
	,(2, 3, 'Trek Bicycles', 'Standard','medium','large', 388.92)
	,(3, 37, 'OHM Cycles', 'Standard','low','medium', 248.82)
	,(4, 88, 'Norco Bicycles', 'Standard','medium',	'medium', 381.10)
	,(5, 78, 'Giant Bicycles', 'Standard','medium',	'large', 709.48)
	,(6, 25, 'Giant Bicycles', 'Road',	'medium','medium', 829.65)
	,(7, 22, 'WeareA2B', 'Standard','medium','medium', 45.26)
	,(8, 15, 'WeareA2B', 'Standard','medium','medium', 13.44)
	,(9, 67, 'Solex', 'Standard','medium',	'large', 380.74)
	,(10, 12, 'WeareA2B', 'Standard','medium','medium', 161.60);

insert into customer (customer_id, first_name, last_name, gender, DOB, job_title, job_industry_category, wealth_segment, deceased_indicator, owns_car, address, postcode, state, country, property_valuation) values
	(1,	'Laraine',	'Medendorp','F','1953-10-12', 'Executive Secretary','Health','Mass Customer','N','Yes', '060 Morning Avenue',2016,'New South Wales','Australia',10)
	,(2,'Eli','Bockman','Male','1980-12-16','Administrative Officer','Financial Services','Mass Customer','N','Yes','6 Meadow Vale Court',2153,'New South Wales','Australia' ,10)
	,(3,'Arlin','Dearle','Male','1954-01-20','Recruiting Manager','Property	','Mass Customer','N','Yes', '0 Holy Cross Court',4211,'QLD','Australia',9)
	,(4,'Talbot',null, 'Male','1961-10-03',null	,'IT','Mass Customer','N','No','17979 Del Mar Point',2448,'New South Wales','Australia' ,4)
	,(5,'Sheila-kathryn','Calton','Female',	'1977-05-13','Senior Editor','n/a',	'Affluent Customer','N','Yes','9 Oakridge Court',3216,	'VIC',	'Australia'	,9)
	,(6,'Curr',	'Duckhouse','Male',	'1966-09-16',null, 'Retail',	'High Net Worth','N','Yes','4 Delaware Trail',	2210, 'New South Wales','Australia',	9)
	,(7,'Fina',	'Merali','Female',	'1976-02-23',null,'Financial Services', 'Affluent Customer','N', 'Yes', '49 Londonderry Lane',2650,'New South Wales','Australia', 4)
	,(8,'Rod','Inder','Male','1962-03-30','Media Manager I','n/a',	'Mass Customer','N','No','97736 7th Trail'	,2023,'New South Wales','Australia',12)
	,(9,'Mala','Lind','Female','1973-03-10','Business Systems Development Analyst', 'Argiculture','Affluent Customer','N','Yes','93405 Ludington Park',	3044, 'VIC','Australia',8)
	,(10,'Fiorenze','Birdall','Female','1988-10-11','Senior Quality Engineer','Financial Services','Mass Customer','N',	'Yes','44339 Golden Leaf Alley',4557, 'QLD','Australia',4);


