


-- STL_LOAD_ERRORS contains a history of all your Redshift load errors.
-- STL_LOAD_ERROR_DETAIL contains additional details, 
-- including the exact row and column where a parse error occurred.   
-- You must first query STL_LOAD_ERRORS to get basic information about the error in question. 
-- Join STL_LOAD_ERRORS with STL_LOAD_ERROR DETAIL to view details of a parse error 

select 
  details.query, 
  details.line_number, 
  details_value, 
  errors.raw_line, 
  errors.err_reason 
from 
  stl_loaderror_detail details, 
  stl_load_errors errors 
where 
  details.query = errors.query 
  and tbl = 8675309;   /* Assumes table #8675309 is the target. */

