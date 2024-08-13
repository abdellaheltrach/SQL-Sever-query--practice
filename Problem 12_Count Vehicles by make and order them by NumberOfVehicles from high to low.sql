SELECT  Makes.Make, COUNT(*) AS NumbreOfVehicle
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
GROUP BY Makes.Make
order by NumbreOfVehicle Desc



