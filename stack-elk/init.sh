#!/usr/bin/env sh

cmd=$1

#Modif permissions
sudo chown root:root metricbeat/metricbeat.yml
sudo chown root:root -R metricbeat/modules.d/*
sudo chmod go-w -R metricbeat/metricbeat.yml
sudo chmod go-w -R metricbeat/modules.d/*

echo "Modification de permissions OK"
echo "Lancer la stack avec: sudo docker-compose up"
