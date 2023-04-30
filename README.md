# Crowdfunding_ETL

## For the ETL mini project, the objective was to practice extracting data, creating individual tables based on the homework requirements and load into a database.

From a original CSV file, I took the data that was provided, broke it out into respective tables.  
- Create the Category DataFrame
- Create the Subcategory DataFrame
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

*Refer to ETL_Mini_Project_KCollins.ipynb file*

These tables were then saved and reviewed to create an ERD:
![image](https://user-images.githubusercontent.com/116396662/235331061-fa58c58a-73ed-4d72-a7e5-610845e14a60.png)

Once the ERD was clear, the data was loaded into the database using PostGres SQL.

*Refer to crowdfunding_db_schema.sql file*
