#!/bin/bash
echo "WARNING: This will delete all the data in the DBs."
read -p "Wanna continue? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Removing volumes..."
    docker compose down -v
    echo "Recreating a clean infrastructure..."
    docker compose up -d
    echo "DBs reseted succesfully."
fi