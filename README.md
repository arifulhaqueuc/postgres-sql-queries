[this repository is under active development with a target completion date Jan 31' 2019]


About The Repository
===========
The goal of this repository is to help us get familiarized with medium-to-advanced level SQL queries suitable for a Postgres Database. 

List of Contents
===========
- Query clause order
- Create Temp Table
- Date Syntax
- Syntax for SQL keyword ```not```



#### Important Concepts in SQL
 - What is the difference in *like* vs *ilike*
 - What is the difference in *union* and *union all*
 - how to extract info from ```datetime```
 

Queries in Repo
=========

The following queries are available within ```sql_queries``` directory

File Name | Description
--- | ---
wb_export.sql | sql query to export result in a csv file
case_statement.sql | example of case syntax
case_statement_2.sql | example of case syntax
group_by.sql | a table with group by syntax
inner_join.sql | basic inner join syntax
join_three_tables.sql | join three tables together
join_groupby_orderby.sql | a table with join and group by and order by





Run & Test The Queries
===========
We can run and test any query using the following online tool
```
http://rextester.com/l/postgresql_online_compiler
```
No need to install any dependency on a local machine. Just copy any query from the 
query collection and paste it in the workpad of this tool.




Support & Disclaimer
===
#### Support
Found a bug?? Here are the options
  - Please file an issue with detailed description.
  - If you know a possible solution, please create a new brnach, update the code and then submit pull request.
  - If you would  like to reach out to me directly with any question, email me at ariful.haque.uc@gmail.com


#### General Disclaimer
This is my personal repo and not an official product of any company. If you would like to use this code, please keep it in your mind that, although I have tried to make it as error-free as possible, there's no warranty of a 100% bug free application. 


References
=========
Others
  - https://aws.amazon.com/documentation/redshift/
  - https://docs.aws.amazon.com/redshift/latest/dg/c_SQL_commands.html
  - https://docs.aws.amazon.com/redshift/latest/dg/welcome.html
  - https://aws.amazon.com/documentation/redshift/

String functions and operations
 - https://www.postgresql.org/docs/9.1/static/functions-string.html
