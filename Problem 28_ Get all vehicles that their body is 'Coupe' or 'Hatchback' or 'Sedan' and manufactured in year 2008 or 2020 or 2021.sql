SELECT VehicleDetails.*, Bodies.BodyName
FROM     VehicleDetails INNER JOIN
                  Bodies ON VehicleDetails.BodyID = Bodies.BodyID
				  Where BodyName in ('Coupe' , 'Hatchback' , 'Sedan') and VehicleDetails.year in (2008,2020,2001)