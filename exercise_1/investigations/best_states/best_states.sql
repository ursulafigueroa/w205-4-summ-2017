CREATE TABLE Best_States AS
SELECT Hospital_State,
AVG (Score) AS State_Score_AVG, 
SUM (Score) AS State_Score_Sum
FROM Care_State_Transformed
GROUP BY Hospital_State
ORDER BY State_Score_Sum DESC LIMIT 10; 

SELECT Hospital_State, State_Score_AVG, State_Score_Sum
FROM Best_States
ORDER BY State_Score_Sum DESC LIMIT 10;
