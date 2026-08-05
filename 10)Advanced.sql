#Subquery1

select * from employee_final order by score desc limit 1;
select * from employee_final where score=(select max(score) from employee_final);
select * from employee_final where score=(select min(score) from employee_final);

select * from employee_final  where score in (5, 9.3);
	
select * from employee_final where score=(select max(score) from employee_final)
union
select * from employee_final where score=(select min(score) from employee_final);

#subquery2
    
select * from employee_final where score in (
        				(select min(score) from employee_final), 
    					(select max(score) from employee_final)
						);
     
     
#subquery3

select * from employee_final where job_domain=
(select high_job_domain.job_domain from 
	(select job_domain, count(*) from employee_final group by job_domain limit 1 ) as high_job_domain);                      



#ANY & ALL
select * from employee_final where score > all(select score from employee_final where job_domain="sales");
select * from employee_final where score > any(select score from employee_final where job_domain="sales");

select * from employee_final where score>(select max(score) from employee_final where job_domain="sales");
select * from employee_final where score>(select min(score) from employee_final where job_domain="sales");


    
    
    
    

