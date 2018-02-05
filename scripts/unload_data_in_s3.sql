
unload ('select * from venue')   to 's3://mybucket/tickit/unload/' iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole';

unload ('select * from venue') to 's3://mybucket/tickit/unload/venue_' iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole' parallel off;


unload ('select * from venue') to 's3://mybucket/tickit/unload/venue_' iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole' parallel off maxfilesize 100 mb;


If you include a preﬁx in the Amazon S3 path string, UNLOAD will use that preﬁx for the ﬁle names.
unload ('select * from venue') to 's3://mybucket/tickit/unload/venue_' iam_role 'arn:aws:iam::0123456789012:role/MyRedshiftRole'
;


unload ('select * from venue')   to 's3://mybucket/tickit/venue_' access_key_id '<access-key-id>' secret_access_key '<secret-access-key>' session_token '<temporary-token>';


