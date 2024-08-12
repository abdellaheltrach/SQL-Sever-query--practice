SELECT Makes.Make, FuelTypes.FuelTypeName,count(*) as NumberOfVehiculs
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID INNER JOIN
                  FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
				  where VehicleDetails.Year between 1950 and 2000
			group by Makes.Make,FuelTypes.FuelTypeName
			order by Makes.Make