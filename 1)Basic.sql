#TABLE RELATED
select * from xyz.employee_final;

use xyz;
select * from employee_final;

select emp_id , emp_name from employee_final;

#WHERE QUERY
select * from employee_final where location='Johar Town';
select * from employee_final where job_domain='sales';
select * from employee_final where location='Johar Town' and job_domain='sales';

#DISTINCT QUERY
select  distinct location from employee_final;
select location from employee_final;

#LIKE QUERY
select * from employee_final where emp_name like 'a%';
select * from employee_final where emp_name like '%ah';
select * from employee_final where emp_name like '%ar%';


select * from employee_final where emp_name like 'a%h';
select * from employee_final where emp_name like '_h%'; 
select * from employee_final where emp_name like '_bdullah';
select * from employee_final where emp_name like 'S_m_an';

#AND & BETWEEN
select * from employee_final where score>9;
select * from employee_final where score>6;

select * from employee_final where score>=6 and score<=9;
select * from employee_final where score between 6 and 9;

#OR & IN
select emp_id,emp_name from employee_final where joining_date='2000' or joining_date='2001' or joining_date='2005';
select emp_id,emp_name from employee_final where joining_date in (2000,2001,2005);

#ORDER BY, DESC, LIMIT & OFFSET
select * from employee_final where location='Johar Town' order by score;
select * from employee_final where location = 'Johar Town' order by score desc;
select * from employee_final where location='Johar Town' order by score desc limit 3;
select * from employee_final where location = 'Johar Town' order by score desc limit 3 offset 1;

#COUNT
select count(*) from employee_final where job_domain='marketing';

#MAX,MIN,AVG
select max(score) from employee_final where job_domain= 'marketing';
select min(score) from employee_final where job_domain= 'marketing';
select avg(score) from employee_final where job_domain= 'marketing';
select round(avg(score),1) from employee_final where job_domain= 'marketing';

select max(score) as max_score,
	   min(score) as min_score,
       avg(score) as avg_score,
       round(avg(score),1) as Round_avg_score
	from employee_final
 where job_domain= 'marketing';
 
#GROUP BY
select location, count(location) from employee_final group by location;
 
select job_domain, count(job_domain) as job_domain, round(avg(score),1) as avg_score 
	from employee_final 
 group by job_domain 
 order by avg_score desc;
 
#HAVING
 select 
           joining_date,
           count(*) as date_count
	from employee_final
	group by joining_date
    having date_count>1
	order by date_count desc;
    
#IF QUERY   
 select 
	emp_name,
	if (job_domain='sales', 'PROMOTED', 'NEXT TIME PAKKA') as job_status 
	from employee_final;
    
#CASE QUERY    
		select 
		emp_name,
		case
			when job_domain='sales' then'PROMOTED'
			when job_domain='marketing' then'FIRED'
			else 'NEXT TIME PAKKA'
			end
			as job_status
		from employee_final;


















