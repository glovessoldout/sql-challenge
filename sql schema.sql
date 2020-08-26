CREATE TABLE "Departments" (
    "dept_no" char(5)   NOT NULL,
    "dept_name" varchar   NOT NULL,
	primary key (dept_no)
);

CREATE TABLE "Department_Employees" (
	"emp_no" int   NOT NULL,
    "dept_no" char(5)   NOT NULL,
	--primary key (emp_no),
	foreign key (emp_no) references "Employee_Info" (emp_no)
);

CREATE TABLE "Department_Managers" (
    "dept_no" char(5)   NOT NULL,
    "emp_no" int   NOT NULL,
	foreign key (dept_no) references "Departments" (dept_no),
	foreign key (emp_no) references "Employee_Info" (emp_no)
);

CREATE TABLE "Employee_Info" (
    "emp_no" int   NOT NULL ,
    "emp_title_id" char(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references "Titles" (title_id)
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	foreign key (emp_no) references "Employee_Info" (emp_no)
);

CREATE TABLE "Titles" (
    "title_id" char(5)   NOT NULL,
    "title" varchar   NOT NULL,
	primary key (title_id)
);
select * from "Departments"

-- all these Alter parts were from making the ERD
ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employee_Info (emp_no);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Employee_Info ADD CONSTRAINT fk_Employee_Info_emp_no FOREIGN KEY(emp_no)
REFERENCES Salaries (emp_no);

ALTER TABLE Employee_Info ADD CONSTRAINT fk_Employee_Info_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

foreign key (emp_title_id) references Titles (title_id)

Alter table "Employee_Info"
add foreign key (emp_title_id) references "Titles" (title_id);
