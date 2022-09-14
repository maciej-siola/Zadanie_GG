#!/bin/bash -e

sudo docker exec -u 33 ms-wordpress1-cli /tmp/wordpress1_copy_script.sh
sudo docker exec -u 33 ms-wordpress2-cli /tmp/wordpress2_copy_script.sh