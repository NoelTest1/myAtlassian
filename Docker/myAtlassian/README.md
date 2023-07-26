
# Build images
cd ~/Docker/myAtlassian/Bamboo
docker build -t mybamboo .

cd ~/Docker/myAtlassian/Postgres
docker build -t mypostgres .

# Run containers
~/Docker/myAtlassian/
docker compose up -d

# Monitor log files
~/Docker/myAtlassian/
docker compose logs -f

# Initialize Postgres
#   NOTE:  manually run script below
#          Script cannot be run as part of a command on docker compose since the postgres service is not yet up
#          FUTURE: Find a way to run the script after postgres service is initialized
docker exec -it myatlassian-mypostgres-1 bash
su - postgres -c '/setup_bamboo.sh'
## !!!IMPORTANT!!! - restart postgres service
docker compose restart mypostgres

# WORKAROUND:
#   Connect to the application using the actual IP for the bamboo container
#   Connect to the database using the actual IP for the postgres container
#       Find out by using 'docker network inspect myatlassian_default
# TO DO:  We will need to find a better way to handle network in docker
#       NOTE:  if you do 'docker compose down', it will remove the network
#              which mean on the next 'docker compose up -d' it will have another set of IPs
#              for each container which is NOT good!!!

# Stop containers
docker compose stop


