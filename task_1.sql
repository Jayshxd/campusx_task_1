-- Show records of 'male' patient from 'southwest' region.
select * from ins where gender = 'male' and region = 'southwest';


-- Show all records having bmi in range 30 to 45 both inclusive.
select *
from ins where bmi between 30 and 45;


-- Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
select min(ins.bloodpressure) as MinBp , max(ins.bloodpressure) as MaxBp from ins where diabetic = 'Yes' and smoker = 'Yes';



-- Find no of unique patients who are not from southwest region.
select count( PatientID) from ins where region != 'southwest';


-- Total claim amount from male smoker.
select sum(ins.claim) as sum_claims from ins where gender = 'male' and smoker like '%Yes%';


-- Select all records of south region.
select *
from ins where region like '%south%';


-- No of patient having normal blood pressure. Normal range[90-120]
select *
from ins where bloodpressure between 90 and 121;


-- No of pateint belo 17 years of age having normal blood pressure as per below formula -
-- BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
select count(*) from ins where age<17 and bloodpressure between 80+age*2 and 100+age*2;

-- What is the average claim amount for non-smoking female patients who are diabetic?
select avg(ins.claim) from ins where smoker like '%no%' and gender in ('female','Female') and diabetic like '%yes%'


-- Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.
update ins
set claim = 5000
where PatientID = 1234;

-- Write a SQL query to delete all records for patients who are smokers and have no children.
delete from ins
where smoker = 'Yes' and children = 0;


