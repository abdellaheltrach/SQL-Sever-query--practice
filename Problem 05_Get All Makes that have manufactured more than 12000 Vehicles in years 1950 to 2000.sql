--my solution (correct)

SELECT Makes.Make,  count(*) as NumberOfVehicles
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000 
group by Make
having count(*) > 12000 
order by NumberOfVehicles desc





--my solution whithout using having

select * from
(
 SELECT Makes.Make,  count(*) as NumberOfVehicles
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000 
group by Make
)koko
where koko.NumberOfVehicles > 12000 