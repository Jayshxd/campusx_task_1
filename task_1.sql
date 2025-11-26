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

