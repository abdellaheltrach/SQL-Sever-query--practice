SELECT distinct Makes.Make,DriveTypes.DriveTypeName ,count(*) as TotaleVehicle
FROM     VehicleDetails INNER JOIN
                  DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  group by Makes.Make,DriveTypes.DriveTypeName
				  Order By Make ASC, TotaleVehicle Desc