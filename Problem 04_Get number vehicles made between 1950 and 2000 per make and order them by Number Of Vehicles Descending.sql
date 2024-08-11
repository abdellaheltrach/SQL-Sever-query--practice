--my solotion 

SELECT  Make, count(*) as NumberOfVehicles from VehicleMasterDetails
where Year between 1950 and 2000
group by Make
order by NumberOfVehicles desc


--Prof solotion

SELECT Makes.Make,  count(*) as NumberOfVehicles
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID
group by Make
order by NumberOfVehicles desc