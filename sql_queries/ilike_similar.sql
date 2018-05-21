
-- LIKE performs a case-sensitive match and ILIKE performs a case-insensitive match.
-- SIMILAR TO matches the entire string and performs a case-sensitive match.

-- 1:
select count(*) 
from event 
where eventname SIMILAR TO '%(Ring|Die)%'
; 

-- 2: 
select count(*) 
from event 
where 
  eventname LIKE '%Ring%' OR 
  eventname LIKE '%Die%'
;
