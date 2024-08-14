--my solution 
SELECT Vehicle_Display_Name, NumDoors, doorDescription=
case
when NumDoors=0 then 'no Doors'
when NumDoors=1 then 'One Door'
when NumDoors=2 then 'Two Doors'
when NumDoors=3 then 'Tree Doors'
when NumDoors=4 then 'Four Doors'
when NumDoors=5 then 'five Doors'
when NumDoors=6 then 'six Doors'
when NumDoors=7 then 'seven Doors'
when NumDoors=8 then 'eight Doors'
else 'Not Set'end 
FROM     VehicleDetails




--prof solution 

SELECT Vehicle_Display_Name, NumDoors, 
case
when NumDoors=0 then 'wero Doors'
when NumDoors=1 then 'One Door'
when NumDoors=2 then 'Two Doors'
when NumDoors=3 then 'Tree Doors'
when NumDoors=4 then 'Four Doors'
when NumDoors=5 then 'five Doors'
when NumDoors=6 then 'six Doors'
when NumDoors=8 then 'eight Doors'
else 'Not Set'end as doorDescription
FROM     VehicleDetails

select distinct NumDoors from VehicleDetails