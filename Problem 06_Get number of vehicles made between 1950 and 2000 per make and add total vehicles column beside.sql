SELECT Makes.Make,  count(*) as NumberOfVehicles, (select count(*) from VehicleDetails) as TotalVehicules
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
where Year between 1950 and 2000 
group by Make
order by NumberOfVehicles desc