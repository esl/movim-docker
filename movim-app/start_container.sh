INSTANCE=movim_instance
IMAGE=movim/app
docker stop $INSTANCE
docker rm $INSTANCE
## when db running on some external server use:
docker run -dit -p 80:80 --expose 80 --name $INSTANCE $IMAGE /bin/bash /home/start_server.sh
## If you use database in docker container, uncomment and run following command instead of previous one:
## docker run -dit -p 80:80 --expose 80 --link $DB_CONTAINER:$DB_HOST --name $INSTANCE  $IMAGE /bin/bash /home/start_server.sh
