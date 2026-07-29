#!/bin/bash
echo "Starting the db infraestructure..."
docker compose up -d
echo "Infraestructure ON. Check the logs with: docker compose logs -f"