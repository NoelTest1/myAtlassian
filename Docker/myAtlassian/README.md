
# Standup Atlassian Service in Docker / Docker Compose
## Build images
```
cd ~/Docker/myAtlassian/Bamboo
docker build -t mybamboo .

cd ~/Docker/myAtlassian/Postgres
docker build -t mypostgres .
```

## Run containers
```
~/Docker/myAtlassian/
docker compose up -d
```

## Monitor log files
```
~/Docker/myAtlassian/
docker compose logs -f
```

## Initialize Postgres
NOTE:  manually run script below
- Script cannot be run as part of a command on docker compose since the postgres service is not yet up
- FUTURE: Find a way to run the script after postgres service is initialized
```
docker exec -it myatlassian-postgres-1 bash
su - postgres -c '/setup_bamboo.sh'
exit
```
**!!! IMPORTANT !!!** - restart postgres service
```
docker compose restart postgres
```

## WORKAROUND:
During bamboo first startup / initialization, use the following workaround so that there are no issues during 
schema creation of bamboo database.  Otherwise it will hang during schema creation.

NOTE:  Revised docker-compose.yml file so that we have a fix IP for both containers

1.  Connect to the web application using the actual IP for the bamboo container.  IE:  http://172.20.0.2:8085
2.  When specifying the JDBC URI, use the actual hostname of postgres which is 'postgres' (instead of localhost)
3.  Once bamboo has completed setup, you can change to connect using http://bamboo:8085
4.  Make sure to change Base URL to:  http://bamboo:8085 (this is in Bamboo -> General Configuration)

## Stop containers
```
docker compose stop
```
