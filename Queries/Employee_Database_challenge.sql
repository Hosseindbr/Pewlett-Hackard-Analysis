
--Deliverable 1
--The Number of Retiring Employees by Title
Select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
	into retirement_titles
	
From employees As e
Inner Join titles As t
On (e.emp_no=t.emp_no)
	Where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	Order by e.emp_no;
	
select * from retirement_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title

INTO unique_titles
FROM retirement_titles As rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

select * from unique_titles

-- number of employee get retired distinguished by their latest title
select count (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count(ut.title) DESC;
Select * From retiring_titles
--Deliverable 2
--mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
Into mentorship_eligibilty
From employees as e
Inner join dept_emp as de
on (e.emp_no=de.emp_no)
Inner Join titles as t
on (e.emp_no=t.emp_no)
Where (e.birth_date Between '1965-01-01' AND '1965-12-31')
And (de.to_date= '9999-01-01')
Order by e.emp_no
select * from mentorship_eligibilty