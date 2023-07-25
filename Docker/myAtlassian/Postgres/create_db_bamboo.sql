create role dbadmin with password 'dbadmin' valid until 'infinity';
alter role dbadmin with login;
create database bamboo owner dbadmin;
