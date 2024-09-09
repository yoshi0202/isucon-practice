#!/bin/bash

cd /app
nginx
mysql < migrate/create_table.sql
npm run dev
