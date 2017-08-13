DROP TABLE Care_Hospital
DROP TABLE HCAHPS_Hospital
DROP TABLE Care_State
DROP TABLE HCAHPS_State

CREATE EXTERNAL TABLE Care_Hospital (Provider_ID STRING, Hospital_Name STRING, Address STRING, City STRING, Hospital_State STRING, Zip_Code INT, County_Name STRING, Phone_Number INT, Patient_Condition STRING, Measure_ID STRING, Measure_Name STRING, Score STRING, Sample STRING, Footnote STRING, Measure_Start_Date DATE, Measure_End_Date DATE)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';


CREATE EXTERNAL TABLE HCAHPS_Hospital (Provider_ID STRING, Hospital_Name STRING, Address STRING, City STRING, Hospital_State STRING, Zip_Code INT, County_Name STRING, Phone_Number INT, HCAHPS_Measure_ID STRING, HCAHPS_Question STRING, HCAHPS_Answer_Description STRING, Patient_Survey_Star_Rating STRING, Patient_Survey_Star_Rating_Footnote STRING, HCAHPS_Answer_Percent STRING, HCAHPS_Answer_Percent_Footnote STRING, Number_of_Completed_Surveys STRING, Number_of_Completed_Surveys_Footnote STRING, Survey_Response_Rate_Percent STRING, Survey_Response_Rate_Percent_Footnote STRING, Measure_Start_Date DATE, Measure_End_Date DATE)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';


CREATE EXTERNAL TABLE Care_State (Hospital_State STRING, Patient_Condition STRING, Measure_Name STRING, Measure_ID STRING, Score STRING, Footnote STRING, Measure_Start_Date DATE, Measure_End_Date DATE)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';


CREATE EXTERNAL TABLE HCAHPS_State (Hospital_State STRING, HCAHPS_Question STRING, HCAHPS_Measure_ID STRING, HCAHPS_Answer_Description STRING, HCAHPS_Answer_Percent STRING, Footnote STRING, Measure_Start_Date DATE, Measure_End_Date DATE)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';