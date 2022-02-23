# Transcribathon MySQL

Dockerized MySQL database of Transcribathon data.

The database is a single service in a shared network. So other services can easily access it.

## Building

To share the database between other services/containers in the network, we just create this network externally:

	$ sudo docker network create tp_backend

The containers is built when first trying to start the container. To provide apropiate environment variables make your changes in `.env.example` and rename it to `.env`.

Then we can start/stopping this container.

## start

	$ sudo docker-compose up -d

## stop

	$ sudo docker-compose down
