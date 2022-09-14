#!/bin/bash -e

wp --quiet db import /tmp/exported-wp-sql.sql
wp search-replace "http://strona1.com" "http://strona2.com"
