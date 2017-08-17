CREATE TABLE Scores_Procedure_Transformed AS
SELECT Measure_ID, Measure_Name, Score
FROM Care_Hospital
WHERE NOT Measure_ID LIKE '%Patients%' AND NOT Measure_ID LIKE '%star%';