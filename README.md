#movim-docker
============

  All needed scripts to have [movim](https://github.com/movim/movim) application run in docker container.
  It builds one image with [apache2](https://httpd.apache.org/) server configured and the second one with the movim deployed in /var/www/movim directory. 

Dependencies
-----------------

- Docker
- OS X / Linux

Configuration
-----------------

In case to successfully run movim app in the container you should configure your datatabase. Do it in the file movim-app/db.inc.php. It's equivalent to movim/config/db.inc.php file so the file will be just replaced.
You have also to configure your public url for your application. Change the line below in movim-app/start_server.sh file:
```
IP_MOVIM="mymovim.com"
```
so that it would match your url

Start
-----------------
just run:
````
$> source run.sh
````
You can check if the container has been successfully run by typing:
````
$> docker ps
````
and the container named `movim_instance` should be listed
