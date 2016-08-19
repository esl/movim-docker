## IP_MOIVM is your public url of your pod
## see more https://github.com/movim/movim/wiki/Install-Movim in section 3. Start the daemon
IP_MOVIM="192.168.99.100"
cd /var/www/movim
php mud.php db --set
/usr/sbin/apache2ctl -D FOREGROUND &
chown -R www-data /var/www
sudo -u www-data php daemon.php http://$IP_MOVIM/ 8080 
