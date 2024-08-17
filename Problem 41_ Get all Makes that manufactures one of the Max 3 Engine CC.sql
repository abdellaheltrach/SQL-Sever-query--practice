SELECT distinct Makes.Make
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
where VehicleDetails.Engine_CC in (SELECT distinct top 3 Engine_CC FROM  VehicleDetails ORDER BY Engine_CC DESC)


