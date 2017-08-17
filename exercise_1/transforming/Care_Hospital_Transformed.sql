CREATE TABLE Care_Hospital_Transformed AS
SELECT Provider_ID, Hospital_Name, Score, Measure_ID, Measure_Name
FROM Care_Hospital
WHERE NOT Measure_ID LIKE '%Patients%' AND NOT Measure_ID LIKE '%star%';