use himu;
create table  himu.data_csv_details1(
Id int,
ActivityDate varchar(60),
TotalSteps decimal(10,6) ,
TotalDistance decimal(10,6),
TrackerDistance decimal(10,6), 
LoggedActivitiesDistance int,
VeryActiveDistance decimal(10,6), 
ModeratelyActiveDistance decimal(10,6), 
LightActiveDistance decimal(10,6),
SedentaryActiveDistance decimal(10,6), 
VeryActiveMinutes int,
FairlyActiveMinutes int, 
LightlyActiveMinutes int, 
SedentaryMinutes int,
Calories int);
SELECT * FROM himu.data_csv_details1;

select distinct Id from  himu.data_csv_details1;
select Id  from himu.data_csv_details1 where Id <(select max(Id) from himu.data_csv_details1) limit 2,1 ;
select Id from himu.data_csv_details1 where Id <(select min(Id) from himu.data_csv_details1) limit 5;