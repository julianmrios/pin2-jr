#!/bin/bash
apt-get update
apt-get install -y apache2
echo "<h1>MUNDOS E - PIN 2 - DevOps 2403</h1><h2> </h2><h3>Grupo 4</h3>" > /var/www/html/index.html
systemctl restart apache2