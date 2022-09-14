#!/bin/bash -e

wp --quiet db import /tmp/exported-wp-sql.sql
