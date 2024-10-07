SELECT "Employees".emp_no, last_name, first_name, sex, salary FROM "Employees"
JOIN "Salaries" ON "Employees".emp_no = "Salaries".emp_no;


SELECT first_name, last_name, hire_date FROM "Employees" 
WHERE EXTRACT (YEAR FROM hire_date) = 1986;


SELECT "Departments".dept_no, "Departments".dept_name, 
		"Dept_manager".emp_no, 
	    "Employees".last_name, "Employees".first_name
		FROM "Departments"
		JOIN "Dept_manager" ON "Departments".dept_no = "Dept_manager".dept_no
		JOIN "Employees" ON "Dept_manager".emp_no = "Employees".emp_no ; 


SELECT "Dept_emp".dept_no, "Dept_emp".emp_no, 
		 "Employees".last_name, "Employees".first_name,
		 "Departments".dept_name
		FROM "Dept_emp"
		JOIN "Employees" ON "Dept_emp".emp_no = "Employees".emp_no
		JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no ;


SELECT first_name, last_name, sex FROM "Employees"
		WHERE first_name ='Hercules' 
		AND last_name LIKE 'B%';


SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
		"Departments".dept_no,"Departments".dept_name
		FROM "Employees"
		JOIN "Dept_emp" ON "Employees".emp_no = "Dept_emp".emp_no
		JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
		WHERE "Departments".dept_name= 'Sales';


SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
		"Departments".dept_no,"Departments".dept_name
		FROM "Employees"
		JOIN "Dept_emp" ON "Employees".emp_no = "Dept_emp".emp_no
		JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
		WHERE "Departments".dept_name IN ('Sales','Development');



SELECT last_name, COUNT (*) AS frequency 
	FROM "Employees"
	GROUP BY last_name
	ORDER BY frequency DESC ;