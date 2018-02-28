
General Syntax

[option 1]
CASE expression

   WHEN value_1 THEN result_1
   WHEN value_2 THEN result_2
   WHEN value_n THEN result_n

   ELSE result

END


Example
SELECT contact_id,
CASE website_id
  WHEN 1 THEN 'TechOnTheNet.com'
  WHEN 2 THEN 'CheckYourMath.com'
  ELSE 'BigActivities.com'
END
FROM contacts
;


[option 2]
CASE

   WHEN condition_1 THEN result_1
   WHEN condition_2 THEN result_2
   WHEN condition_n THEN result_n

   ELSE result

END

Example
SELECT contact_id,
CASE
  WHEN website_id = 1 THEN 'TechOnTheNet.com'
  WHEN website_id = 2 THEN 'CheckYourMath.com'
  ELSE 'BigActivities.com'
END
FROM contacts
;
