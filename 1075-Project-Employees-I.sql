# Write your MySQL query statement below
#average experience nikalna hai sabhi employees ka ,for each project
# experience
# experience
# experience
#
#
#experience
select 
p.project_id ,
 
 round(AVG(e.experience_years),2) as average_years

from project p join Employee e
where p.employee_id=e.employee_id 
group by p.project_id;

