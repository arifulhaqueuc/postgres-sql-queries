
copy command syntax

COPY table_name 
[ column_list ] 
FROM data_source 
[ WITH ] CREDENTIALS [AS] ‘aws_access_credentials’ 
[ [ FORMAT ] [ AS ] data_format ] 
[ [ parameter [argument] [, ...] ]


copy command example

create table addresses
(
  name varchar(10), 
  streetname varchar(10), 
  address smallint, 
  city varchar(10), 
  state varchar(10), 
  zip smallint
  
)
;

copy addresses 
from ‘s3://your_s3_bucket/subdir/addresses.txt’ 
credentials ‘aws_access_key_id=<your_access_key_id>;
aws_secret_ access_key=<your_secret_access_key>’;
