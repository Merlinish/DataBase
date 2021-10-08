.header on
.mode columns
.nullvalue NULL
.open northwind.db

select categoryname,num_of_products,avgprice,miniprice,maxprice,totalunits
from(select categoryid,
     count(*) as num_of_products,
     printf("%.2f",avg(unitprice)) as avgprice,
     min(unitprice) as miniprice,
     max(unitprice) as maxprice,
     sum(unitsonorder) as totalunits
     from product
     group by categoryid)
left join category
on categoryid=category.id
where num_of_products>10
order by categoryid
;
