CREATE TABLE Care_State_Transformed AS
SELECT Hospital_State, Measure_ID, Score 
FROM Care_State
WHERE NOT Measure_ID LIKE '%Patients%' 
AND NOT Measure_ID LIKE '%sometimes%' 
AND NOT Measure_ID LIKE '%always%' 
AND NOT Measure_ID LIKE '%usually%'
AND NOT Measure_ID LIKE '%Sometimes%' 
AND NOT Measure_ID LIKE '%Always%' 
AND NOT Measure_ID LIKE '%Usually%'
AND NOT Measure_ID LIKE '%patients%';