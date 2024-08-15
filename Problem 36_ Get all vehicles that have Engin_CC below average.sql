SELECT VehicleDetails.*
FROM     VehicleDetails
where VehicleDetails.Engine_CC < (SELECT avg(VehicleDetails.Engine_CC) from VehicleDetails)
order by Engine_CC

