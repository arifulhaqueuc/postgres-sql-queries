### About The Repository
The goal of this repository is to help us get familiarized with medium-to-advanced level SQL queries suitable for a Postgres Database, and there is also a set of queries that we can execute on AWS RedSfift Database to monitor current errors and other admin-level  information. 


#### Run & Test The Queries
We can run and test all the queries using the following online tool. 
<br />http://rextester.com/l/postgresql_online_compiler
<br />*No need to install any dependency on a local machine. Just copy any query from the query collection and paste it in the workpad of this tool.*


#### Pre-requisites / Know Before You Go
  - Basic knowledge of SQL Queries
  - Good Knowledge on AWS Redshift architecture


Query clause order

```
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY

```


Create temp table from a given table
```
create temp table top_ten_salary as
(
select emp_salary
from employee_table 
--group by emp_salary
order by emp_salary desc
limit 10
)
;



```

Date Syntax
```
start_time::timestamptz AT TIME ZONE 'America/New_York' 
  BETWEEN '2017-12-25' 
  AND '2017-12-26'

```



Group By Syntax
```
SELECT 
  year,
  month,
  COUNT(*) AS count


FROM 
  tutorial.aapl_historical_stock_price


GROUP BY 
  1, 2
 
``` 
 
Join with Group by and Order By
```

SELECT 
  teams.conference AS conference
  , AVG(players.weight) AS average_weight


FROM benn.college_football_players players
JOIN benn.college_football_teams teams
ON teams.school_name = players.school_name

GROUP BY teams.conference
ORDER BY AVG(players.weight) DESC


```



File Name | Description
--- | ---
stl_error_message.sql | xxx
analyze_table_1.sql | xxx
show_running_queries.sql | xxx
aws_create_tables.sql | xxx
create_tables_inser_data.sql  | xxx
create_temp_table.sql | xxx
extract_function.sql | xxx
substring_regex.sql | xxx
aws_database_queries2.sql | xxx
date_syntax.sql | xxx
find_gradation.sql | xxx
union.sql | xxx
aws_database_queries.sql | xxx
dedup_count.sql | xxx               
find_max_number.sql | xxx       
unload_data_in_s3.sql | xxx
aws_load_dataset.sql | xxx          
deep_copy_1.sql | xxx               
ilike_similar.sql | xxx         
wb_export.sql | xxx
aws_show_db_users.sql | xxx
deep_copy_2.sql | xxx               
inner_join.sql | xxx           
window_function.sql | xxx
changing_dates_to_epochs.sql  | xxx
deep_copy_3.sql | xxx              
sample_data.sql | xxx
copy_command.sql | xxx              
exists.sql | xxx                   


:computer: Support & Disclaimer
===
### Support
Found a bug??
<br />Here are the options
  - Please file an issue with detailed description.
  - If you know a possible solution, please create a new brnach, update the code and then submit pull request.
  - If you would  like to reach out to me directly with any question, email me at ariful.haque.uc@gmail.com

Interester in Collaboration and Contribution??
<br /> I am open to except any relevant collaboration suggestion from developers. Feel free to reach out to me in email.

### General Disclaimer
This is my personal repo and not an official product of any company. If you would like to use this code, please keep it in your mind that, although I have tried to make it as error-free as possible, there's no warranty of a 100% bug free application. 



References
  - https://aws.amazon.com/documentation/redshift/


