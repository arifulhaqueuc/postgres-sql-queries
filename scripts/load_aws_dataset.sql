copy customer from 's3://awssampledbuswest2/ssbgz/customer'
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<YourSecret-Access-Key>'

gzip compupdate off region 'us-west-2';
copy dwdate from 's3://awssampledbuswest2/ssbgz/dwdate'
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<YourSecret-Access-Key>'

gzip compupdate off region 'us-west-2';
copy lineorder from 's3://awssampledbuswest2/ssbgz/lineorder'
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<YourSecret-Access-Key>'
gzip compupdate off region 'us-west-2';
copy part from 's3://awssampledbuswest2/ssbgz/part'
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<YourSecret-Access-Key>'
gzip compupdate off region 'us-west-2';
copy supplier from 's3://awssampledbuswest2/ssbgz/supplier'
credentials 'aws_access_key_id=<Your-Access-Key-ID>;aws_secret_access_key=<YourSecret-Access-Key>'
gzip compupdate off region 'us-west-2';
