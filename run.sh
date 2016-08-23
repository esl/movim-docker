IMAGE=movim/app
clear
echo "removing image"
docker rmi -f $IMAGE
echo

echo "building new image"
cd apache2
source build-apache.sh
cd ..
cd movim-app
source movim.config
source create_db_config.sh
source create_start_server.sh
source build-movim.sh
source start_container.sh
cd ..
