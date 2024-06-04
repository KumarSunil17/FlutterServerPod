$ cd mypod/mypod_server

$ docker compose up --build --detach

$ dart bin/main.dart --apply-migrations
 docker run --name postgres -e POSTGRES_PASSWORD=YEQCcfJHtiuVI5Ea1m023rTf2NceTfhZ -d -p 8090:5432 postgres