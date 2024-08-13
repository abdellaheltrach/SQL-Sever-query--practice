SELECT  Makes.Make, MakeModels.ModelName, VehicleDetails.NumDoors
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  MakeModels ON VehicleDetails.ModelID = MakeModels.ModelID AND Makes.MakeID = MakeModels.MakeID
where NumDoors is null