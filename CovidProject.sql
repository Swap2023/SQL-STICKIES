#Created databse
#Fetched data from excel
SELECT * FROM covid.covidsql;

#Show the number of Confirmed, Deaths and Recovered cases in each Region. 
select sum(Confirmed),sum(Deaths),sum(Recovered)
from covid.covidsql

#Remove all the records where the Confirmed Cases is Less Than 10 
CALL `covid`.`new_procedure`();

start transaction;
delete from covid.covidsql
where Confirmed<10;

rollback;
commit;

#In which Region, maximum number of Confirmed cases were recorded?
CALL `covid`.`new_procedure`();
select Region,max(Confirmed)
from covid.covidsql
group by Region;

#In which Region, minimum number of Deaths cases were recorded? 
select Region,min(Deaths)
from covid.covidsql
group by Region;

#How many Confirmed, Deaths & Recovered cases were reported from India till 29 April 2020?
CALL `covid`.`new_procedure`();
select Confirmed,Deaths,Recovered
from covid.covidsql
where Region="India";

#Sort the entire data wrt No. of Confirmed cases in ascending order. 
CALL `covid`.`new_procedure`();

select * 
from covid.covidsql
order by Confirmed;

#Sort the entire data wrt No. of Recovered cases in descending order.
select * 
from covid.covidsql
order by Recovered desc;


