# Use the official PostgreSQL image as the base
FROM postgres:latest

# Set environment variables (customize these)
ENV POSTGRES_USER=sined
ENV POSTGRES_PASSWORD=sinedpass
ENV POSTGRES_DB=sined

# Create an initialization script for database and table creation
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the standard PostgreSQL port
EXPOSE 5432