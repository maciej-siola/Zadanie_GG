#!/bin/bash -e

wp db export --tables=$(wp db tables --format=csv) /tmp/exported-wp-sql.sql
