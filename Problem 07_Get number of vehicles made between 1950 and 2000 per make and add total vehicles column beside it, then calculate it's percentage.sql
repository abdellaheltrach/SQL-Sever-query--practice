

select * ,(CAST(NumberOfVehicles as float) /cast(TotalVehicules as float)  ) as percet from
(
SELECT Makes.Make,  count(*) as NumberOfVehicles, (select count(*) from VehicleDetails) as TotalVehicules
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000 
group by Make
)KOKO
order by KOKO.NumberOfVehicles desc



------------

SELECT Makes.Make,  count(*) as NumberOfVehicles, (select count(*) from VehicleDetails) as TotalVehicules,
percet=(CAST(count(*) as float) /cast((select count(*) from VehicleDetails) as float))

FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000 
group by Make
order by NumberOfVehicles desc
