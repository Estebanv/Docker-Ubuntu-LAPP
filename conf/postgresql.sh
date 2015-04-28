#/bin/bash
service postgresql start
sudo -u postgres psql -f /home/conf/postgresql.sql
