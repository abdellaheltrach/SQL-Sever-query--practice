
select * from VehicleDetails
where VehicleDetails.Engine_CC = (select  max(Engine_CC)from VehicleDetails)

