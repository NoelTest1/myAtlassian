FROM postgres

# copy files
COPY create_db_bamboo.sql pg_hba.conf setup_bamboo.sh .
RUN chmod a+x /setup_bamboo.sh

# install vi / ifconfig / ping
RUN apt-get update
RUN apt-get install -y vim net-tools iputils-ping

