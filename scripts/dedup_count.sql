-- create robocop table
drop table if exists robocop_viewers
;

CREATE TEMP TABLE robocop_viewers
(
cust_ID varchar(60)
);

-- insert some robocop Data


-- create avatar table
drop table if exists avatar_viewers
;

CREATE TEMP TABLE avatar_viewers
(
cust_ID varchar(60)
);

-- inser some avatar Data

drop table if exists titanic_viewers
;

CREATE TEMP TABLE titanic_viewers
(
cust_ID varchar(60)
);

-- insert some titanic Data


-- create master table
create temp table all_viewers as(

select cust_ID
from robocop_viewers
union
select cust_ID
from titanic_guy_viewers
union
select cust_ID
from avatar_viewers
)
;

select count(*)
from all_viewers
;


-- join master table with others

select 
  titanic,
  robocop,
  avatar,
  COUNT(DISTINCT cust_ID) as cust_ID_COUNT
from all_viewers
LEFT JOIN
  (SELECT
    PSID,
    1 as titanic
  FROM titanic_viewers
  GROUP BY PSID,titanic) USING (cust_ID)
LEFT JOIN  
  (SELECT
    PSID,
    1 as avatar
  FROM avatar_viewers
  GROUP BY PSID,avatar) USING (cust_ID)
LEFT JOIN  
  (SELECT
    PSID,
    1 as titanic
  FROM titanic_viewers
  GROUP BY PSID,titanic) USING (cust_ID)  
LEFT JOIN  
  (SELECT
    PSID,
    1 as 
  FROM robocop_viewers
  GROUP BY PSID,robocop) USING (cust_ID)  
GROUP BY 
  avatar,
  titanic,
  robocop
