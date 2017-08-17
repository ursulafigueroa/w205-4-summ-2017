CREATE TABLE hospital_variability AS
SELECT Measure_ID, Measure_Name, 
AVG (Score) AS Procedure_Score_AVG, 
SUM (Score) AS Procedure_Score_Sum,
STDDEV (Score) AS Procedure_Score_STDEV
FROM Scores_Procedure_Transformed
GROUP BY Measure_ID, Measure_Name
ORDER BY Procedure_Score_STDEV DESC LIMIT 10;

SELECT Measure_ID, Measure_Name, Procedure_Score_AVG, Procedure_Score_Sum, Procedure_Score_STDEV
FROM hospital_variability
ORDER BY Procedure_Score_STDEV DESC LIMIT 10;
