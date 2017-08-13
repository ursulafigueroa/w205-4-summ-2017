
#Clone github repository

[w205@ip-172-31-27-140 ~]$ git clone https://github.com/ursulafigueroa/w205-4-summ-2017.git


#Move to exercise_1/loading_and_modeling folder

[w205@ip-172-31-27-140 ~]$ cd w205-4-summ-2017
[w205@ip-172-31-27-140 w205-4-summ-2017]$ ls

#Lab 4  Lab1          Lab2  Lab5  Lab7       exercise_1
#Lab 8  Lab1-answers  Lab3  Lab6  README.md  screenshot.png

[w205@ip-172-31-27-140 w205-4-summ-2017]$ cd exercise_1
[w205@ip-172-31-27-140 exercise_1]$ cd loading_and_modeling

#unzip and rename:

[w205@ip-172-31-27-140 loading_and_modeling]$ unzip HCAHPSHospital.zip

#Archive:  HCAHPSHospital.zip
#  inflating: HCAHPS - Hospital.csv

[w205@ip-172-31-27-140 loading_and_modeling]$ mv HCAHPS\ -\ Hospital.csv HCAHPS_Hospital.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ unzip TimelyandEffectiveCareHospital.zip

#Archive:  TimelyandEffectiveCareHospital.zip
#  inflating: Timely and Effective Care - Hospital.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ mv Timely\ and\ Effective\ Care\ -\ Hospital.csv TimelyandEffectiveCare_Hospital.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ mv TimelyandEffectiveCareState.csv TimelyandEffectiveCare_State.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ mv HCAHPSState.csv HCAHPS_State.csv



#Remove header, Tail -n +2:

#[w205@ip-172-31-27-140 loading_and_modeling]$ ls
#HCAHPS_Hospital.csv  HCAHPS_State.csv  TimelyandEffectiveCare_Hospital.csv  TimelyandEffectiveCare_State.csv  data

[w205@ip-172-31-27-140 loading_and_modeling]$ tail -n +2 HCAHPS_Hospital.csv > HCAHPS_Hospital_NH.csv 


[w205@ip-172-31-27-140 loading_and_modeling]$ tail -n +2 TimelyandEffectiveCare_Hospital.csv > TimelyandEffectiveCare_Hospital_NH.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ tail -n +2  HCAHPS_State.csv >  HCAHPS_State_NH.csv


[w205@ip-172-31-27-140 loading_and_modeling]$ tail -n +2 TimelyandEffectiveCare_State.csv > TimelyandEffectiveCare_State_NH.csv


#[w205@ip-172-31-27-140 loading_and_modeling]$ ls

#HCAHPS_Hospital.csv     HCAHPS_State.csv     TimelyandEffectiveCare_Hospital.csv     TimelyandEffectiveCare_State.csv     data
#HCAHPS_Hospital_NH.csv  HCAHPS_State_NH.csv  TimelyandEffectiveCare_Hospital_NH.csv  TimelyandEffectiveCare_State_NH.csv


#hdfs directory

[w205@ip-172-31-27-140 /]$ hdfs dfs -mkdir hospital_compare


#[w205@ip-172-31-27-140 /]$ hdfs dfs -ls
#Found 1 items
#drwxr-xr-x   - w205 supergroup          0 2017-08-12 20:45 hospital_compare
#[w205@ip-172-31-27-140 /]$


[w205@ip-172-31-27-140 exercise_1]$ cd loading_and_modeling
#[w205@ip-172-31-27-140 loading_and_modeling]$ ls
#HCAHPS_Hospital.csv     HCAHPS_State.csv     TimelyandEffectiveCare_Hospital.csv     TimelyandEffectiveCare_State.csv     data
#HCAHPS_Hospital_NH.csv  HCAHPS_State_NH.csv  TimelyandEffectiveCare_Hospital_NH.csv  TimelyandEffectiveCare_State_NH.csv

[w205@ip-172-31-27-140 loading_and_modeling]$ hdfs dfs -put HCAHPS_Hospital_NH.csv /user/w205/hospital_compare
[w205@ip-172-31-27-140 loading_and_modeling]$ hdfs dfs -put HCAHPS_State_NH.csv /user/w205/hospital_compare
[w205@ip-172-31-27-140 loading_and_modeling]$ hdfs dfs -put TimelyandEffectiveCare_Hospital_NH.csv /user/w205/hospital_compare
[w205@ip-172-31-27-140 loading_and_modeling]$ hdfs dfs -put TimelyandEffectiveCare_State_NH.csv /user/w205/hospital_compare

[w205@ip-172-31-27-140 hospital_compare]$ hdfs dfs -ls hospital_compare
#Found 4 items
#-rw-r--r--   1 w205 supergroup   81973764 2017-08-12 22:09 hospital_compare/HCAHPS_Hospital_NH.csv
#-rw-r--r--   1 w205 supergroup     359296 2017-08-12 22:10 hospital_compare/HCAHPS_State_NH.csv
#-rw-r--r--   1 w205 supergroup   63280769 2017-08-12 22:11 hospital_compare/TimelyandEffectiveCare_Hospital_NH.csv
#-rw-r--r--   1 w205 supergroup     567500 2017-08-12 22:11 hospital_compare/TimelyandEffectiveCare_State_NH.csv



