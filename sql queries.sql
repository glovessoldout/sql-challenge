
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select "Employee_Info".emp_no, "Employee_Info".last_name, "Employee_Info".first_name,"Employee_Info".sex,"Salaries".salary  from "Employee_Info"
inner join "Salaries" on
"Salaries".emp_no="Employee_Info".emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from "Employee_Info"
where (hire_date <= '1986-12-31') and (hire_date >= '1986-01-01')

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select "Departments".dept_no,"Departments".dept_name,"Department_Managers".emp_no,"Employee_Info".last_name, "Employee_Info".first_name from "Departments"
inner join "Department_Managers" on
"Departments".dept_no="Department_Managers".dept_no
inner join "Employee_Info" on
"Department_Managers".emp_no = "Employee_Info".emp_no

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
select "Employee_Info".emp_no,"Employee_Info".last_name, "Employee_Info".first_name,"Departments".dept_name from "Employee_Info"
inner join "Department_Employees" on
"Employee_Info".emp_no="Department_Employees".emp_no
inner join "Departments" on
"Department_Employees".dept_no="Departments".dept_no

-- List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."
select "Employee_Info".first_name,"Employee_Info".last_name,"Employee_Info".sex from "Employee_Info"
where "Employee_Info".first_name = 'Hercules' and "Employee_Info".last_name like 'B%'

-- List all employees in the Sales department
-- including their employee number, last name, first name, and department name.
select "Employee_Info".emp_no,"Employee_Info".last_name, "Employee_Info".first_name,"Departments".dept_name from "Employee_Info"
inner join "Department_Employees" on
"Employee_Info".emp_no="Department_Employees".emp_no
inner join "Departments" on
"Department_Employees".dept_no="Departments".dept_no
where "Departments".dept_name = 'Sales'

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name
select "Employee_Info".emp_no,"Employee_Info".last_name, "Employee_Info".first_name,"Departments".dept_name from "Employee_Info"
inner join "Department_Employees" on
"Employee_Info".emp_no="Department_Employees".emp_no
inner join "Departments" on
"Department_Employees".dept_no="Departments".dept_no
where ("Departments".dept_name = 'Sales') or ("Departments".dept_name ='Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select "Employee_Info".last_name, count("Employee_Info".last_name) from "Employee_Info"
group by "Employee_Info".last_name
order by last_name desc



