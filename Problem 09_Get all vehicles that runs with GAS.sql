SELECT VehicleDetails.*, FuelTypes.FuelTypeName
FROM     FuelTypes INNER JOIN
                  VehicleDetails ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
				  where FuelTypes.FuelTypeName = N'GAS'