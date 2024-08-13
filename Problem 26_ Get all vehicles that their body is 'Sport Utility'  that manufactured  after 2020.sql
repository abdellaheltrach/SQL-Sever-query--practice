SELECT VehicleDetails.*, Bodies.BodyName
FROM     VehicleDetails INNER JOIN
                  Bodies ON VehicleDetails.BodyID = Bodies.BodyID
				  Where BodyName='Sport Utility' and Year > 2020