.header on
.mode columns
.nullvalue NULL
.open northwind.db

select companyname,customerid,round(total_exp,2) as total_exp
from (select ifnull(companyname,'MISSSING_NAME') as companyname,
	customerid,total_exp,
	ntile(4) over(order by cast(total_exp as float)) as quantity
	from (select customerid,sum((unitprice*quantity))as total_exp
		from [order],orderdetail
		where [order].id=orderid
		group by customerid) as detail,customer
	where customerid=customer.id)
where total_exp=1
order by cast(total_exp as float)
;
