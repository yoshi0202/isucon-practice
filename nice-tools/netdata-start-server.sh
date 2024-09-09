#!/bin/bash

cd /app
nginx
mysql < migrate/create_table.sql
netdata
npm run dev
