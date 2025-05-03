use etl;
select * from healthcare;

select Name from healthcare;

select Medical_Condition from healthcare
group by Medical_Condition;

select count(Doctor) from healthcare;

select * from healthcare
where Gender='Female';

select avg(Age) from healthcare;

/*
select Medical_Condition,count(Medical_Condition) from healthcare
group by Medical_Condition
Having count(Medical_Condition)>1;
*/

select Doctor from healthcare;

select Medical_Condition,count(Medical_Condition) from healthcare
group by Medical_Condition
Having count(Medical_Condition)>1
order by count(Medical_Condition) Desc limit 1;

select Name from healthcare
where Age>60 and Medical_Condition='Diabetes';

select sum(Billing_Amount) from healthcare;

select Name,Age,Doctor from healthcare
order by Age Desc limit 1;

select avg(duration) from healthcare;

select Name from healthcare
where Name like 'A%';

select count(*),Gender from healthcare
group by Gender;

select count(*),Test_Results from healthcare
where Test_Results='Normal';

select * from healthcare;

select count(*) from healthcare
where Test_Results='Abnormal' or Test_Results='Inconclusive';

/*
select Name,Age,Blood_Type from healthcare
where Blood_Type='AB+' and Age > 52; 
*/

select count(*) from healthcare
where Blood_Type='AB+' and Age>52;

/*
select Name,Billing_Amount from healthcare
where Billing_Amount>24890;
*/

select count(*) from healthcare
where Billing_Amount>24890;

select Name from healthcare
where Medical_Condition='Asthma';

select * from healthcare;

select count(*) from healthcare
where Medical_Condition='Cancer';

select Name,Blood_Type from healthcare
where Room_Number=292;

select count(*) from healthcare
where Gender='Male' and Medical_Condition='Arthritis';

select count(*) from healthcare
where Hospital='Harris and Sons';

select Name from healthcare
where Insurance_Provider='Cigna';

/*select avg(Age) from Healthcare;*/
/*select Name,age,Medical_Condition from healthcare;*/

select Name,Medical_Condition from healthcare
where Age > (select avg(Age) from healthcare);
