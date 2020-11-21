# sql-challenge

SQL Homework - Employee Database: A Mystery in Two Parts

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

Data Engineering
Data Analysis

Instructions

Data Modeling
Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like http://www.quickdatabasediagrams.com.

Data Engineering

Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.



Data Analysis

1.List the following details of each employee: employee number, last name, first name, sex, and salary.
2.List first name, last name, and hire date for employees who were hired in 1986.
3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4.List the department of each employee with the following information: employee number, last name, first name, and department name.
5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



Bonus (Optional)
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

Create a histogram to visualize the most common salary ranges for employees.

Create a bar chart of average salary by title.