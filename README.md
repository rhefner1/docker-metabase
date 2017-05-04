# docker-metabase w/MongoDB backend
To get started, do the following:
- Start metabase`docker-compose up`
- In another terminal, start another Mongo container: `docker run -it mongo:3.2 bash`
- In another terminal, find the container ID of the container just started: `docker ps`
- Copy file into container: `docker cp ./file.csv CONTAINER_ID:/`
- Connect container to Mongo network: `docker network connect metabase_stack CONTAINER_ID`
- Inspect network and get IP of Mongo container: `docker network Inspect metabase_stack`
- Run the import tool, replacing IP and filename: `mongoimport --host=172.19.0.2 -d groupme -c groupme --type csv --file ./file.csv --headerline`
- Open http://localhost:3000 to get to the Metabase setup wizard. When setting up the database, use the IP address from the previous step. No authentication is set up.
