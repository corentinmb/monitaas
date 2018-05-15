#!/bin/bash

set -euo pipefail

beat=$1

until curl -s http://kibana:5601; do
    sleep 2
done
sleep 5

echo ${beat} - chargement des dashboards

# Load the sample dashboards for the Beat.
# REF: https://www.elastic.co/guide/en/beats/metricbeat/master/metricbeat-sample-dashboards.html
${beat} setup \
        -E setup.kibana.host=kibana --dashboards
