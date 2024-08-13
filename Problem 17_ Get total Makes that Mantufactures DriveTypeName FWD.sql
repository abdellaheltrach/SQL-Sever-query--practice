select count(*) as totalMakes from 
(
SELECT distinct Makes.Make, DriveTypes.DriveTypeName
FROM     Makes INNER JOIN
                  VehicleDetails ON Makes.MakeID = VehicleDetails.MakeID INNER JOIN
                  DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = 'FWD'
)koko