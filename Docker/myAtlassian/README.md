
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

# Stop containers
docker compose down


