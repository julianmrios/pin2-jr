#!/bin/bash
apt-get update
apt-get install -y apache2
echo "<h1>PIN2 - Terraform y AWS </h1><h2>Curso DevOps - MundosE </h2><h3>Grupo 14</h3>" > /var/www/html/index.html
systemctl restart apache2