#!/bin/bash -e

wp --quiet db import /tmp/exported-wp-sql.sql
wp search-replace "http://strona1.com" "http://strona2.com"
rm /tmp/exported-wp-sql.sql
cp -R /tmp/copy/* /var/www/html/wp-content/uploads/
rm -rf /tmp/copy/