Openfire XMPP Server (https://www.igniterealtime.org/projects/openfire/)

Small docker image Openfire XMPP Server based on alpine.
To build image use command: "docker build -t openfire ."
After building the image, run the container with the command: "docker run -d --name=[container-name] -e TZ=[Time/Zone] -p [port:port] openfire

Ports used by the container: 5222, 5223, 5262, 5263, 5269, 5270, 5275, 5276, 7070, 7443, 7777, 9090, 9091

See docker-compose.yaml file for an example of running a container using the backend MySQL database.
