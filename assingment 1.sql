create table items (
item_id int not null,
item_description varchar (255),	
vender_no int ,
vender_name varchar (255),
bottle_size int,
bottle_price money
) 

insert into items  values (1,'Travis Hasee Apple Pie',305,'Mhw Ltd', 750,9.77),
(2,'D aristi Xtabentum',391,'Achor Distillin  (preiss Import)',750,14.12),
(3,'Hiram Walker Peach Brandy',370,'Pernod Ricard Usa/austin Nichols',1000,6.50),
(4,'Oak Cross Whisky',305,'Mhw Ltd', 750,25.33),
(5,'Uv Red(cherry) Vodka',380,'Phillips Beverage Company',200,1.97),
(6,'Heaven Hill Old Style White Labe',259,'Heaven Hill Distilleries Inc.',750,6.37 ),
(7,'Hyde Herbal Liqueur',194,'Fire Tail Brands Llc',750,5.06),
(8,'Dupont Calvados Fine Reserve',403,'Robert Kacher Selections',750,23.61)

select * from items
select * from products

create table products (
product_id int not null,
country varchar (50),
product varchar (50),
unit_sold decimal(6,2),
Manufacturing_price int,
sales_price int,
gross_sales int,
sales int,
COGS int ,
profit int,
Date date,  
Month_number int,
Month_name varchar(50),
year int	
)


select * from products


insert into products values (1,'Canada','Carretera',1618.5,3.00,20,32370.00,323700.00,16185.00,16185.00,'1-1-2014',1,'january', 2014),
(2,'Germany','Carretera',1312, 3.00, 20, 26420.00, 26420.00, 13210.00, 13210.00, '1-1-2014', 1, 'january', 2015),
(3,'France','Carretera' ,2178, 3.00, 15, 32670.00, 32670.00, 21780.00, 21780.00, '6-1-2014', 6, 'june', 2016),
(4,'Germany','Carretera',888, 3.00, 15, 13320.00, 13320.00, 8880.00, 8880.00, '6-1-2014', 6, 'june', 2017) 

insert into products values (5, 'Mexico', 'Carretera' ,2470, 3.00, 15, 37050.00, 37050.00, 24700.00, 24700.00, '6-1-2014', 6, 'june', 2018),
(6, 'Germany', 'Carretera' ,1513, 3.00, 310, 529550.00, 529550.00, 393380.00, 393380.00, '12-1-2014', 12, 'december', 2019), 
(7, 'Germany', 'Monatana' ,321, 5.00, 15, 13815.00, 13815.00, 9210.00,9210.00, '3-1-2014', 3, 'march', 2020),
(8, 'canada', 'Montana' ,2518, 5.00, 12, 30216.00, 30216.00, 7554.00, 7554.00, '6-1-2014', 6, 'june', 2021);
-------------------------------------------------


--Find the Total Sale Price  and  Gross Sales 

select sum(sales_price)as total_sales_price, sum(gross_sales) as total_gross_sales
from products



-----In which year we have got the highest sales

select max(sales) as highest_sale, year
from products
group by year
order by highest_sale desc

---Which Product having the sales of $ 37,050.00
 
 select product 
 from products 
 where sales = 37050.00 
 
 
 ---Find the item_description and Product having the gross sales of 13,320.00
 
 
 select items.item_description , products.product
 from  items 
 inner join 
 products 
 on products.product_id = items.item_id
 where gross_sales = 13320
 
 
 ----find item_description where the bottle size of 750
 
 select  item_id, bottle_size 
 from items
 where bottle_size = 750
 
 

---find the total value of bottle_price and total_profit by bottle size with bottle size is greater than 200.

select a.bottle_size, sum(a.bottle_price) as total_B_prtice, sum(b.profit) as total_Profit
from items as a
inner join
products as b 
on a.item_id = b.product_id 
group by bottle_size
having bottle_size > 200;


-----find sales from products table from date 1 january to 6th january 2024

select sales, date from products
where date between '2014-01-01' and '2014-01-06';














