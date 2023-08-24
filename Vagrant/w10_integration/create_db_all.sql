create role dbadmin with password 'dbadmin' valid until 'infinity';
alter role dbadmin with login;

create database jiradb owner dbadmin;
create database confluencedb owner dbadmin;
create database bitbucketdb owner dbadmin;
create database bamboodb owner dbadmin;
