# docker-metabase w/MongoDB backend
To get started, do the following:
- Drag CSV files to import into MongoDB into `importer/files_to_import/`. If you have different kinds of files, you may need to make modifications to the import script.
- Look at the environment variables for the importer in `docker-compose.yml`. Change the database and collection names if desired.
- For the first run only, change IMPORT_RUN to "true". Then change it back to "false" so you don't have new documents being imported every time you restart the containers.
- Start metabase: `docker-compose up`
- Open http://localhost:3000 to get to the Metabase setup wizard. When setting up the database, use "mongodb" as the IP address for MongoDB and the data from the environment variables. No authentication is set up.
-
