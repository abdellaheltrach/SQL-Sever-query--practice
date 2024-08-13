
--my solution
SELECT  Makes.Make, MakeModels.ModelName,VehicleDetails.Engine_Liter_Display, VehicleDetails.NumDoors
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  MakeModels ON VehicleDetails.ModelID = MakeModels.ModelID AND Makes.MakeID = MakeModels.MakeID
				  where VehicleDetails.Engine_Liter_Display > 3 and VehicleDetails.NumDoors=2


--prof solution


select * from VehicleDetails
where Engine_Liter_Display > 3 and NumDoors =2