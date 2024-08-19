SELECT Makes.Make, COUNT(*) AS NumberOfModels
FROM     Makes INNER JOIN
                  MakeModels ON Makes.MakeID = MakeModels.MakeID
				  group by Makes.Make
				  having COUNT(*)= 
			                   (
							  select MAX(NumberOfModels) from 
            				    (
            				  SELECT Makes.Make, COUNT(*) AS NumberOfModels
							  FROM     Makes INNER JOIN
			                                    MakeModels ON Makes.MakeID = MakeModels.MakeID
			 				  group by Makes.Make
		   	                    )koko
             				  )
