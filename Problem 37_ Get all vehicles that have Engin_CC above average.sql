--my solution

SELECT VehicleDetails.*
FROM     VehicleDetails
where VehicleDetails.Engine_CC > (SELECT avg(VehicleDetails.Engine_CC) from VehicleDetails)
order by Engine_CC


--prof solution

select Count(*) as NumberOfVehiclesAboveAverageEngineCC from
(
 
	Select ID,VehicleDetails.Vehicle_Display_Name from VehicleDetails
	where Engine_CC > ( select  Avg(Engine_CC) as MinEngineCC  from VehicleDetails )

) R1
