SELECT Makes.Make, VehicleDetails.*
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  where  VehicleDetails.Engine like '%OHV%' and VehicleDetails.Engine_Cylinders=4