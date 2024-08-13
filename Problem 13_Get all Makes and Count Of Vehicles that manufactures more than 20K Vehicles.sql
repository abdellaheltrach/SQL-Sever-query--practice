
--using having
SELECT  Makes.Make, COUNT(*) AS NumbreOfVehicle
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
GROUP BY Makes.Make
having COUNT(*) > 20000
order by NumbreOfVehicle Desc
--without using having


select * from
(
SELECT  Makes.Make, COUNT(*) AS NumbreOfVehicle
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
GROUP BY Makes.Make
)koko
where koko.NumbreOfVehicle > 20000
order by koko.NumbreOfVehicle Desc