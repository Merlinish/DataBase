.header on
.mode columns
.nullvalue NULL
.open northwind.db

select companyname,
	printf("%.2f",count(case when shippeddate>requiredDate then true else null end)/round(count([order].id))*100) as delay_percent
from [order]
left outer join shipper
on [order].shipvia=shipper.id
group by [order].shipvia
order by delay_percent desc
;

