# Use the official PostgreSQL image as the base
FROM postgres:latest

# Create an initialization script for database and table creation
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the standard PostgreSQL port
EXPOSE 5432