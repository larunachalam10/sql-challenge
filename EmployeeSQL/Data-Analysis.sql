select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no, emp.last_name, emp.first_name,emp.sex, sal.salary
from employees as emp
	join salaries sal on emp.emp_no=sal.emp_no;
	
	
--2. List first name, last name, and hire date for employees who were hired in 1986.

select  emp.last_name, emp.first_name,emp.hire_date
from employees as emp
where emp.hire_date >  '1985-12-31'
and emp.hire_date < '1987-01-01' ;

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, d.dept_name,dm.emp_no,e.last_name,e.first_name
from dept_manager dm
join departments d on dm.dept_no=d.dept_no
inner join employees e on dm.emp_no =e.emp_no;


-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.


select emp.emp_no, emp.last_name,emp.first_name,d.dept_name 
from employees as emp
join dept_manager dm on emp.emp_no=dm.emp_no
inner join departments d on dm.dept_no=d.dept_no;


-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select emp.first_name, emp.last_name,emp.sex
from employees emp
where first_name= 'Hercules'
and last_name Like 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name,emp.first_name, depart.dept_name
from employees as emp
join dept_emp d on emp.emp_no=d.emp_no
inner join departments  as depart
			on d.dept_no=depart.dept_no
		where depart.dept_name='Sales';


-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select emp.emp_no,emp.last_name, emp.first_name, d.dept_name
from employees emp
join dept_emp dm on emp.emp_no=dm.emp_no
inner join departments  as d
			on dm.dept_no=d.dept_no
		where d.dept_name='Sales' or d.dept_name='Development'; 

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select count(last_name),last_name
from employees 
group by last_name 
order by count(last_name) desc;



