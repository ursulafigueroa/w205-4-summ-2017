CREATE TABLE Best_Hospitals AS
SELECT Provider_ID, Hospital_Name, 
AVG (Score) AS Hospital_Score_AVG, 
SUM (Score) AS Hospital_Score_Sum
FROM Care_Hospital_Transformed 
GROUP BY Provider_ID, Hospital_Name
ORDER BY Hospital_Score_Sum DESC LIMIT 10;

SELECT Provider_ID, Hospital_Name, Hospital_Score_AVG, Hospital_Score_Sum
FROM Best_Hospitals
ORDER BY Hospital_Score_Sum DESC LIMIT 10;
