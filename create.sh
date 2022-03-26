#!/bin/bash
sudo echo New site name:

read varsite


sudo touch /etc/apache2/sites-available/$varsite.conf 

cp -r /home/allen/webDev/copy_this_folder /home/allen/webDev/$varsite



#touch $varsite.txt



sudo echo "<VirtualHost *:80>
	# The ServerName directive sets the request scheme, hostname and port that
	# the server uses to identify itself. This is used when creating
	# redirection URLs. In the context of virtual hosts, the ServerName
	# specifies what hostname must appear in the request's Host: header to
	# match this virtual host. For the default virtual host (this file) this
	# value is not decisive as it is used as a last resort host regardless.
	# However, you must set it for any further virtual host explicitly.
        ServerName $varsite

	ServerAdmin webmaster@localhost
	DocumentRoot /home/allen/webDev/$varsite/public_html
	<Directory /home/allen/webDev/$varsite/public_html>
	Options Indexes FollowSymLinks MultiViews
	AllowOverride All
	Require all granted
	</Directory>

	# Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
	# error, crit, alert, emerg.
	# It is also possible to configure the loglevel for particular
	# modules, e.g.
	#LogLevel info ssl:warn

	ErrorLog ${APACHE_LOG_DIR}/error.log
	CustomLog ${APACHE_LOG_DIR}/access.log combined

	# For most configuration files from conf-available/, which are
	# enabled or disabled at a global level, it is possible to
	# include a line for only one particular virtual host. For example the
	# following line enables the CGI configuration for this host only

	#Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
" >> /etc/apache2/sites-available/$varsite.conf
