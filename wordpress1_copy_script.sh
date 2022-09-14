#!/bin/bash -e

wp db export --tables=$(wp db tables --format=csv) /tmp/exported-wp-sql.sql
sed --in-place --expression 's#`wp1_#`wp2_#g' /tmp/exported-wp-sql.sql
mkdir /tmp/copy/
cp -R /var/www/html/wp-content/uploads/* /tmp/copy/