#  BRING UP ALL VMs:  Jira / Bibucket / Confluence / Jenkins

## Vagrant 
    Vagrant will bring up the following VMs and Services:
    1.  VM 1: Jira
    2.  VM 2: Bitbucket
    3.  VM 3: Bamboo
    4.  VM 4: Jenkins

## Jira
    Onced the VM is up, you can connect to: http://jira:8080
    1.  From here, configure Jira manually (select 'I'll set it up myself')
    2.  Select 'My Own Database'
    2.  Select Postgres for database and do the folowing:
        - hostname:  dbserver
        - post: 5432
        - dbname: jiradb
        - user: dbadmin
        - pass: dbadmin
    3.  Follow steps to install 30-day trial license from Atlassian
    4.  Create user: admin

## Bamboo
    Onced the VM is up, you can connect to: http://bamboo:8085
    1.  From here, configure Bamboo manually (select 'I'll set it up myself')
    2.  Select 'My Own Database'
    2.  Select Postgres for database and do the folowing:
        - hostname:  dbserver
        - post: 5432
        - dbname: bamboodb
        - user: dbadmin
        - pass: dbadmin
    3.  Follow steps to install 30-day trial license from Atlassian
    4.  Create user: admin


## Jenkins
    Onced the VM is up, connect console
    1.  TURN OFF Network Interface for NAT.  THIS IS TO PREVENT JENKINS TO TRY TO FIND PLUGINS FROM THE WEB
    2.  Open CMD Terminal in Admin
    3.  cd \
    4.  java -jar c:\jenkins_home\jenkins.war
    5.  Copy key to unlock jenkins from output from java run above
    6.  Open browser (chrome / edge)
    7.  Go to http://localhost:8080
    8.  Paste key to unlock Jenkins
    9.  Press 'SKIP Plugin Installation' (NOTE: We already copied the appropriate plugins on plugin folder in JENKINS_HOME)
    10. Enter/create admin credentials
    11. Once logged in, install Jenkins as a service
        - Follow prompts to complete install Jenkins as a service
    12. Close VM Console
    13. Open browser: go to http://jenkins:8080


    1.  From here, configure Jira manually (select 'I'll set it up myself')
    2.  Select 'My Own Database'
    2.  Select Postgres for database and do the folowing:
        - hostname:  dbserver
        - post: 5432
        - dbname: jiradb
        - user: dbadmin
        - pass: dbadmin
    3.  Follow steps to install 30-day trial license from Atlassian
    4.  Create user: admin


## Run powershell scripts from cmd terminal
@POWERSHELL.EXE -ExecutionPolicy Bypass -File .\<filename>.ps1



## PLUGINS
https://github.com/mathworks/matlab-bamboo-plugin/releases/tag/v1.0.0
https://marketplace.atlassian.com/apps/1211542/atlassian-rest-api-browser/version-history
