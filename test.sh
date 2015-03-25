#!/bin/bash
sudo rm -rf /var/lib/tomcat7/webapps/cas*
mvn clean package
sudo cp target/cas.war /var/lib/tomcat7/webapps/
sudo systemctl restart tomcat7
