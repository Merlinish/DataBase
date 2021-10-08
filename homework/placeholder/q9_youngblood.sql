.header on
.mode columns
.nullvalue NULL
.open northwind.db

select regiondescription as region,firstname,lastname,birthdate
from employee,employeeterritory,territory,region
where employee.id=employeeid and
	territory.id=territoryid and
	region.id=regionid
group by regionid
order by birthdate desc
