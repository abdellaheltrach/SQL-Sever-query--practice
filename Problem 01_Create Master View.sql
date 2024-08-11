

create view VehicleMasterDetails as
SELECT VehicleDetails.ID, Makes.MakeID, Makes.Make, MakeModels.ModelID, MakeModels.ModelName, SubModels.SubModelID, SubModels.SubModelName, Bodies.BodyID, Bodies.BodyName, VehicleDetails.Vehicle_Display_Name, 
                  VehicleDetails.Year, DriveTypes.DriveTypeID, DriveTypes.DriveTypeName, VehicleDetails.Engine, VehicleDetails.Engine_CC, VehicleDetails.Engine_Cylinders, VehicleDetails.Engine_Liter_Display, FuelTypes.FuelTypeID, 
                  FuelTypes.FuelTypeName, VehicleDetails.NumDoors
FROM     FuelTypes INNER JOIN
                  Bodies INNER JOIN
                  Makes INNER JOIN
                  MakeModels ON Makes.MakeID = MakeModels.MakeID INNER JOIN
                  SubModels ON MakeModels.ModelID = SubModels.ModelID INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID AND MakeModels.ModelID = VehicleDetails.ModelID AND SubModels.SubModelID = VehicleDetails.SubModelID ON Bodies.BodyID = VehicleDetails.BodyID INNER JOIN
                  DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID ON FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID


