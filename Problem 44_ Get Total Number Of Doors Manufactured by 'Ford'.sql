SELECT Makes.Make,sum(NumDoors)as TotalDoors
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  group by Makes.Make
				  having Makes.Make = 'ford'