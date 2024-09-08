#!/bin/bash

cd /app
mysql < migrate/create_table.sql
npm run dev
