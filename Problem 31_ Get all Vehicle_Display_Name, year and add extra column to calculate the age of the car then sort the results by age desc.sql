SELECT Vehicle_Display_Name, Year,Age=YEAR(GETDATE())-VehicleDetails.Year
FROM     VehicleDetails
order by  Age desc