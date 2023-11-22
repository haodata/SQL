use us;
#problem 1 
select count(*) from chicagocrimedata;

#problem 2
select `COMMUNITY_AREA_NUMBER`,`COMMUNITY_AREA_NAME` from chicagocensusdata where 'PER_CAPITA_INCOME' <11000;

#problem 3
select `CASE_NUMBER` from chicagocrimedata where `DESCRIPTION` like '%minor%';

#problem 4
select * from  chicagocrimedata where  `PRIMARY_TYPE` like '%kidnapping%';

#problem 5
select `PRIMARY_TYPE` from  chicagocrimedata where `LOCATION_DESCRIPTION` like '%school%';

#problem 6
select avg(SAFETY_SCORE) from chicagopublicschools group by  `Elementary, Middle, or High School` ;

#problem 7
select COMMUNITY_AREA_NAME from chicagocensusdata order by `PERCENT_HOUSEHOLDS_BELOW_POVERTY` desc limit 5;

#problem 8 ???
select COMMUNITY_AREA_NUMBER , count(COMMUNITY_AREA_NUMBER) as frequnecy from chicagocrimedata 
group by COMMUNITY_AREA_NUMBER 
order by count(COMMUNITY_AREA_NUMBER) desc limit 1;



#problem 9
select `COMMUNITY_AREA_NUMBER`,`COMMUNITY_AREA_NAME` from chicagocensusdata 
where `HARDSHIP_INDEX` = (select max(`HARDSHIP_INDEX`) from  chicagocensusdata );

#problem 10
select COMMUNITY_AREA_NAME from chicagocensusdata
where COMMUNITY_AREA_NUMBER=(select COMMUNITY_AREA_NUMBER from chicagocrimedata
group by COMMUNITY_AREA_NUMBER 
order by count(COMMUNITY_AREA_NUMBER) desc limit 1);

