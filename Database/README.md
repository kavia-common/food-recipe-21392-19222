# Food Recipe Database (PostgreSQL)

This folder contains a minimal SQL schema for PostgreSQL. The application can run without this by using a SQLite fallback, but for production use PostgreSQL.

## Setup

1) Create a PostgreSQL database.
2) Apply schema:
   psql -h HOST -U USER -d DBNAME -f schema.sql

3) Configure the backend:
   - Set `DATABASE_URL` in Backend `.env` (see `.env.example`).

Example DATABASE_URL:
postgresql+psycopg2://USER:PASSWORD@HOST:5432/DBNAME

## Notes

- The backend seeds sample data on startup if the database is empty.
- Images are stored as URLs for simplicity in this sample.
