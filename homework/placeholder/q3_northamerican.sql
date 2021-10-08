.header on
.mode columns
.nullvalue NULL
.open northwind.db

select distinct orderid,shipcountry, 
	(case when shipcountry in ('USA','Mexico','Canada') then 'NorthAmerica' else 'OtherPlcae' end) as ShipRegion
from orderdetail,[order]
where orderid >= 15445 and [order].id=orderid
order by orderid asc limit 0,20
;
