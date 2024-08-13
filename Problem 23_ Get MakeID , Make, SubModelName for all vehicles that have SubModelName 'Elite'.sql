SELECT distinct VehicleDetails.MakeID, Makes.Make, SubModels.SubModelName
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID INNER JOIN
                  SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
				  where SubModels.SubModelName = 'Elite'