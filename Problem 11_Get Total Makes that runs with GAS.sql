
select count(*) as TotalMakesRunsOnGas from
(

SELECT distinct Makes.Make, FuelTypes.FuelTypeName
FROM     FuelTypes INNER JOIN
                  VehicleDetails ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  where FuelTypes.FuelTypeName = N'GAS'
				--  group by Makes.Make,FuelTypes.FuelTypeName

) koko
