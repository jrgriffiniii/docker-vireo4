# Docker for Vireo 4
This is an experimental Docker project for the [Vireo ETD management system](https://github.com/TexasDigitalLibrary/Vireo).

## Building the Web Application Resource (WAR)
From within the source code base, please invoke the following:

```bash
$ git clone https://github.com/TexasDigitalLibrary/Vireo.git
$ cd Vireo
$ export $VIREO_SRC=$(pwd)
$ mvn -Dproduction -DskipTests package
```

## Building the Docker Image

```bash
$ cp $VIREO_SRC/target/vireo-*.war target/
$ docker build -t pulibrary/vireo4 .
```

## Running the Application
```bash
$ docker-compose up
```

A Vireo deployment should now be available at [http://localhost:8888/vireo].
