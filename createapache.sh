#!/bin/bash
apt-get update
apt-get install -y apache2
echo "<h1>DIPLOMATURA DEVOPS - COMISION 2403</h1><h2>MUNDOS E</h2><h2>PIN 2</h2><h3>Grupo 7</h3>" > /var/www/html/index.html
systemctl restart apache2