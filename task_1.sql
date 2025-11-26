-- Show records of 'male' patient from 'southwest' region.
select * from ins where gender = 'male' and region = 'southwest';


-- Show all records having bmi in range 30 to 45 both inclusive.
select *
from ins where bmi between 30 and 45;


-- Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
select min(ins.bloodpressure) as MinBp , max(ins.bloodpressure) as MaxBp from ins where diabetic = 'Yes' and smoker = 'Yes'