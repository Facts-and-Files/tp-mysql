# transcribathon-mysql

Dockerized MySQL database of Transcribathon data.

The database is a single service in a shared network.

## Building

To share the database between other services/containers in the network, we just create this network externally:

	$ sudo docker create tp_backend

Then we can start/stopping this container.

## start

	$ sudo docker-compose up -d

## stop

	$ sudo docker-compose down
