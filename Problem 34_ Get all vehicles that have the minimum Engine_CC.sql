
select * from VehicleDetails
where VehicleDetails.Engine_CC = (select  Min(Engine_CC)from VehicleDetails)