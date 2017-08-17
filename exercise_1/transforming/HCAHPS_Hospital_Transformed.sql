CREATE TABLE HCAHPS_Hospital_Transformed AS
SELECT Provider_ID, Hospital_Name, HCAHPS_Answer_Percent
FROM HCAHPS_Hospital
WHERE HCAHPS_Question LIKE '%Always%';