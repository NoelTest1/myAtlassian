#!/bin/bash

cp -v /pg_hba.conf data/pg_hba.conf  
psql -U postgres -f /create_db_bamboo.sql
