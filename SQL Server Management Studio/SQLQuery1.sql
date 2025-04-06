

		USE [db_zoo];

		SELECT species_name FROM tbl_nutrition
			   INNER JOIN tbl_species ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id
			   WHERE nutrition_id BETWEEN 2202 AND 2206;

			   SELECT * FROM tbl_species;
			   SELECT * FROM tbl_nutrition;

			   SELECT a1.species_name AS 'species name', b1.nutrition_type AS 'nutrition type'
			   FROM tbl_species a1

			   INNER JOIN tbl_nutrition b1  ON   b1.nutrition_id = a1.species_nutrition;

			    SELECT * FROM tbl_species;
				SELECT * FROM tbl_specialist;
				SELECT * FROM tbl_care;
			
			    SELECT c3.specialist_fname As 'first name',
				      c3.specialist_lname AS 'last name',
					  c3.specialist_contact AS 'contact number'
					   FROM tbl_species a1
					   INNER JOIN tbl_care b2 ON b2.care_id = a1.species_care
					   INNER JOIN tbl_specialist c3 ON c3.specialist_id = b2.care_specialist
					   WHERE species_name = 'penguin';


				SELECT specialist_fname AS 'First Name',
					    specialist_lname AS 'Last Name',
						specialist_contact AS 'Contact Number'
				FROM tbl_specialist
				INNER JOIN tbl_care ON tbl_care.care_specialist = tbl_specialist.specialist_id
				INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id
				WHERE species_name = 'penguin';