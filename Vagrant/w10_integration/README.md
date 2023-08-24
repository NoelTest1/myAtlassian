#  BRING UP ALL VMs:  Jira / Bibucket / Confluence / Jenkins

## Vagrant 
    Vagrant will bring up the following VMs and Services:
    1.  VM 1: Jira
    2.  VM 2: Bitbucket
    3.  VM 3: Bamboo / Postgres (Note: Script will create 4 database:  jiradb, confluencedb, bitbucketdb, bamboodb) with dbadmin/dbadmin logins
    4.  VM 4: Jenkins

## Jira
    Onced the VM is up, you can connect to: http://jira:8080
    1.  From here, configure Jira manually
    2.  Select Postgres for database and do the folowing:
        - hostname:  bamboo
        - post: 5432
        - dbname: jiradb
        - user: dbadmin
        - pass: dbadmin
    3.  Follow steps to install 30-day trial license from Atlassian
    4.  Create user: admin
    5
