# Crowdfunding_ETL

## For the ETL mini project, I practiced building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 

From a original CSV file, I created various dataframes to seperated the data into smaller datasets and saved as CSV files:
- Create the Category DataFrame
- Create the Subcategory DataFrame
- Create the Campaign DataFrame
- Create the Contacts DataFrame

I also created a database based on the original CSV file:
- Create the Crowdfunding Database
*Refer to ETL_Mini_Project_KCollins.ipynb file*

After the data was transformed into the smaller the datasets, I created an ERD to show how the data was all related:
![image](https://user-images.githubusercontent.com/116396662/235331061-fa58c58a-73ed-4d72-a7e5-610845e14a60.png)

Then, using PostGres SQL a table schema was created, with this schema the smaller CSV files were loaded into a Postgres database.
*Refer to crowdfunding_db_schema.sql file*
