# Pewlett-Hackard-Analysis
## Resources
1.	departments.csv
2.	employees.csv
3.	salaries.csv
4.	dept_emp.csv
5.	dept_manager.csv
6.	titles.csv
7.	pgAdmin 4-V 6.8
## Overview of the Project
We are identifying which employees are eligible to participate in the mentorship program based on their title and retirement status.
 Employees born between January 1, 1952 and December 31, 1955 will be listed by their titles in our retiring employees by title information. Our Powlett-Hackard query begins by retrieving the emp_no, first_name, and last_name columns from the employees table, and the title column, from_date, and to_date column from the titles table. By joining the two tables on their primary key, filtering the data by birth_date, and putting the information into a new table, we were able to get the data we needed.Using the DISTINCT ON function, we created the unique_titles table to find the first occurrence of emp_no in the new table. Finally, we used ORDER BY COUNT in the final deliverable to show us how many titles were in our unique_titles table. The second deliverable involved pulling columns from our employees and dept_emp tables, filtered them for current employees born after 1965, and ordered the tables by emp_number.
##Results
With the analysis we were able to see:
1.	how many people are getting retired and how long they have been working in the company.

<img width="716" alt="Screen Shot 2022-08-18 at 1 30 14 PM" src="https://user-images.githubusercontent.com/108313440/185459081-78bf1a67-13e4-4792-b385-03e14fc86b0b.png">

2.	the latest position of each employee eligible for the retirement 

<img width="557" alt="Screen Shot 2022-08-18 at 1 30 53 PM" src="https://user-images.githubusercontent.com/108313440/185459298-948b079b-9432-480e-bc53-1de84c53b0d4.png">

3.	number of retiring people in each title. This results indicated that the major portion of retiring employees are the ones who hold senior positions in the company.

<img width="247" alt="Screen Shot 2022-08-18 at 1 31 30 PM" src="https://user-images.githubusercontent.com/108313440/185459470-6a65f8a1-3333-4538-bda6-03ce0df733a1.png">

5.	
6.	People who are eligible to act as mentors in the company and transfer their knowledge to the younger generations.

<img width="741" alt="Screen Shot 2022-08-18 at 1 32 41 PM" src="https://user-images.githubusercontent.com/108313440/185459569-91a3bff7-2546-434a-b3e8-90a700d2e458.png">

## Conclusion
The analysis showed that 90398 position will be vacant and company should plan for hiring new staff or promoting current staff to the senior positions. Considering ~1500 employees eligible for the mentoring program and ~60000 retiring employees with senior positions, company needs to be ready and allocate proper budget and resources for human resources to hire new senior staff. 
