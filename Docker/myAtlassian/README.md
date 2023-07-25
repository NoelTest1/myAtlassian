
# Build images
cd ~/Docker/myAtlassian/Bamboo
docker build -t mybamboo .

cd ~/Docker/myAtlassian/Postgres
docker build -t mypostgres .

# Run containers
~/Docker/myAtlassian/
docker compose up -d

# Stop containers
docker compose down


