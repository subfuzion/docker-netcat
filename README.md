# netcat

[![Docker Build Statu](https://img.shields.io/docker/build/subfuzion/netcat.svg)](https://hub.docker.com/r/subfuzion/docker-netcat)

Simple Alpine image for running netcat (`nc`).

Use this when you don't have netcat installed on your system or you want to use this image as a
base for simple service demos.

## Example

Create an overlay network

    $ docker network create --driver overlay --attachable demonet

Start a netcat server in one terminal

    $ docker run -t --rm -p 8888:8888 --network=demonet --name=ncs subfuzion/netcat -l 8888

Send a message to the server from another terminal

    $ docker run -i --rm --network=demonet subfuzion/netcat ncs 8888
    hello # will see hello echoed at the other terminal

## TIP

You can set an alias to reduce typing:

    $ alias ncs="docker run -t --rm --network=demonet --name=ncs subfuzion/netcat -l"
    $ alias nc="docker run -i --rm --network=demonet subfuzion/netcat ncs"

Then the example above looks like this:

Start netcat server in one terminal

    $ ncs 8888

Send a message from another terminal

    $ echo "hello world" | nc 8888

To kill both containers

    $ docker rm -f ncs


