DROP TABLE IF EXISTS crime_t; 

create table crime_t(
Report_No int,
Incident_time time,
Complaint_type varchar(15),
Cctv_flag varchar(6),
Precinct_code int, 
Area_code int, 
Area_name varchar(25),
Cctv_count int,
Population_density int,
Rounds_per_day int,
Crime_code int, 
Crime_type varchar(100), 
Weapon_code int,
Weapon_desc varchar(100),
Case_status_code char(2), 
Case_status_desc varchar(100), 
Victim_code int,
Victim_name varchar(15),
Victim_sex char(1), 
Victim_age int,
Was_victim_alone char(3),
Is_victim_insured char(3),
Offender_code int,
Offender_name varchar(15),
Offender_sex char(1),
Offender_age int,
Repeated_offender varchar(3),
No_of_offences int,
Offender_relation varchar(3),
Officer_code int,
Officer_name varchar(15),
Officer_sex char(1),
Avg_close_days int,
Week_number int,
primary key (officer_code,offender_code,victim_code));

DROP TABLE IF EXISTS temp_t; 
create table temp_t(
Report_No int,
Incident_time time,
Complaint_type varchar(15),
Cctv_flag varchar(6),
Precinct_code int, 
Area_code int, 
Area_name varchar(25),
Cctv_count int,
Population_density int,
Rounds_per_day int,
Crime_code int, 
Crime_type varchar(100), 
Weapon_code int,
Weapon_desc varchar(100),
Case_status_code char(2), 
Case_status_desc varchar(100), 
Victim_code int,
Victim_name varchar(15),
Victim_sex char(1), 
Victim_age int,
Was_victim_alone char(3),
Is_victim_insured char(3),
Offender_code int,
Offender_name varchar(15),
Offender_sex char(1),
Offender_age int,
Repeated_offender varchar(3),
No_of_offences int,
Offender_relation varchar(3),
Officer_code int,
Officer_name varchar(15),
Officer_sex char(1),
Avg_close_days int,
Week_number int,
primary key (officer_code,offender_code,victim_code));


DROP TABLE IF EXISTS location_t; 
create table location_t(
Area_Code int,
Area_Name varchar(20), 
CCTV_Count int,
Population_Density int, 
Rounds_per_Day int,
primary key (area_code));

DROP TABLE IF EXISTS officer_t; 
create table officer_t(
Officer_Code int,
Officer_Name varchar(30), 
Officer_Sex char(1),
Avg_Close_Days int,
Precinct_Code int,
primary key (officer_code));

DROP TABLE IF EXISTS victim_t;
create table victim_t(
Victim_Code int, 
Victim_Name varchar(20), 
Victim_Age int,
Victim_Sex char(1), 
Was_Victim_Alone varchar(3), 
Is_Victim_Insured varchar(3),
primary key (victim_code));

DROP TABLE IF EXISTS report_t;
create table report_t(
Report_No int,
Incident_Time time, 
Complaint_Type varchar(50), 
CCTV_Flag varchar(5),
Area_Code int, 
Victim_Code int, 
Officer_Code int, 
Offender_Code int, 
Offender_Name varchar(20), 
Offender_Age int,
Offender_Sex char(1), 
Repeated_Offender varchar(3), 
No_Of_Offences int,
Offender_Relation varchar(3), 
Crime_Code int,
Crime_Type varchar(30), 
Weapon_Code int,
Weapon_Desc varchar(30), 
Case_Status_Code char(2), 
Case_Status_Desc varchar(15), 
Week_Number int,
primary key (officer_code,offender_code,victim_code));