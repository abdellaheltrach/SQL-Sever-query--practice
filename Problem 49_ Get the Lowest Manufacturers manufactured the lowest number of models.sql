SELECT Makes.Make, COUNT(*) AS NumberOfModels
FROM     Makes INNER JOIN
                  MakeModels ON Makes.MakeID = MakeModels.MakeID
				  group by Makes.Make
				  having COUNT(*)= 
			                   (
							  select min(NumberOfModels) from 
            				    (
            				  SELECT Makes.Make, COUNT(*) AS NumberOfModels
							  FROM     Makes INNER JOIN
			                                    MakeModels ON Makes.MakeID = MakeModels.MakeID
			 				  group by Makes.Make
		   	                    )koko
             				  )
