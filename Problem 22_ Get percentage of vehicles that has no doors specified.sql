SELECT
(

cast ((select count(*) FROM VehicleDetails where VehicleDetails.NumDoors is null)as float)
/
cast ((select count(*) FROM VehicleDetails)as float)

) as persentge


