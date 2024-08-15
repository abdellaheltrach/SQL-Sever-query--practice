--my solution 
SELECT Vehicle_Display_Name, Year,YEAR(GETDATE())-VehicleDetails.Year as Age 
FROM     VehicleDetails
where YEAR(GETDATE())-VehicleDetails.Year between 15 and 25
order by  Age desc


--teacher solution

select * from
(
SELECT Vehicle_Display_Name, Year,YEAR(GETDATE())-VehicleDetails.Year as Age 
FROM     VehicleDetails
) as koko
where koko.Age between 15 and 25
order by  Age desc
