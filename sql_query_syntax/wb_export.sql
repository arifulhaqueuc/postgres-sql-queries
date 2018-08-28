-- create export command
-- ref: http://www.sql-workbench.net/manual/command-export.html

WbExport -type=text
         -file='<directory_path>\Documents\test_data_v1.csv'
         -delimiter=','
         -header=false
;
         


