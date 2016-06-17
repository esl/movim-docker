INSTANCE=movim_instance
IMAGE=movim/app
docker stop $INSTANCE
docker rm $INSTANCE
docker run -dit -p 80:80 --expose 80 --name $INSTANCE  $IMAGE /bin/bash /home/start_server.sh
