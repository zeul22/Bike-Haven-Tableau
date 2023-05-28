select * from customer;
select * from date;
select * from geography;
select * from internetsales;
select * from product;
select * from productcategory;
select * from productsubcategory;

ALTER TABLE customer DROP COLUMN spanisheducation, DROP COLUMN frencheducation
, DROP COLUMN spanishoccupation, DROP COLUMN frenchoccupation;

alter table date drop column spanishdaynameofweek,drop column frenchdaynameofweek,
drop column spanishmonthname, drop column frenchmonthname;

alter table geography drop column spanishcountryregionname,drop column frenchcountryregionname;

-- Merging Category & SubCateogry & Product
select c.*,d.* from product as c
left join (
select a.*, b.* from productcategory as a
inner join productsubcategory as b
on a.productcategorykey=b.productcategorykey
)as d
on c.productsubcategorykey=d.productsubcategorykey;



--Additional Questions to be added in Dashboard

--Top 10 Products by Sales Amount
select a.productkey, a.englishproductname,b.TotalAmnt 
from product as a inner join
(select productkey,sum(salesamount) as TotalAmnt
from internetsales
group by productkey order by 2 desc limit 10
) as b 
on a.productkey=b.productkey

--Top 10 Valuable Customers
select a.customerkey,a.yearlyincome, b.TotalAmnt  
from customer as a 
inner join 
(select customerkey, sum(salesamount)as TotalAmnt 
 from internetsales 
 group by customerkey order by 2 desc)
as b
on a.customerkey=b.customerkey
order by 3 desc;


-- Merging Customer and Geography Table

select a.*,b.* from customer as a
inner join geography as b
on a.geographykey=b.geographykey

-- Removing Unwanted columns
Alter table product drop column enddate;
alter table customer drop column  addressline2;
