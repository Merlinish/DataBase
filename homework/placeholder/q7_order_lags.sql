.header on
.mode columns
.nullvalue NULL
.open northwind.db

select id,orderdate,
	(lag(orderdate,1,orderdate) over(order by orderdate)) as lags,
	round(julianday(orderdate)-julianday(lag(orderdate,1,orderdate) over(order by orderdate)),2) as percent
from [order]
where customerid='BLONP'
limit 10
;
