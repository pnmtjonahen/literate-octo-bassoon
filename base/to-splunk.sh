#!/bin/sh
docker exec -it -u splunk base_splunkforwarder_1 /bin/bash -c "/opt/splunkforwarder/bin/splunk add monitor /logs"
docker exec -it -u splunk base_splunkforwarder_1 /bin/bash -c "/opt/splunkforwarder/bin/splunk add forward-server splunk:9997"
