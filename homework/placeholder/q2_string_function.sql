.header on
.mode columns
.nullvalue NULL
.open northwind.db

select distinct shipname , substr(shipname,1,instr(shipname,'-')-1) as first_shipname
from [order]
where shipname like '%-%'
;
