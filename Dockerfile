FROM mysql:5.6
ENV MYSQL_DATABASE taskmgr
ENV MYSQL_ROOT_PASSWORD=root

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
ADD ./mysql-scripts/ /docker-entrypoint-initdb.d