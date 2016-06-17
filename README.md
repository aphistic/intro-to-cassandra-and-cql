Intro to Cassandra and CQL
==========================

This is a presentation I've created intended for users of SQL and traditional relational databases (such as MySQL, PostgreSQL and others).  My goal is to show what Cassandra is, how it differs from an RDBMS, some basic Cassandra Query Language (CQL) queries and a few "gotchas" that I've learned along the way.

Presented At
------------
* [dev.Objective()](http://www.devobjective.com) 2016 (June 14-17 2016) - Minneapolis, MN


Why this Repository?
--------------------
I would like to treat this is a "living presentation".  In addition to including the normal slides it also includes a few example CQL files you can use to play with and hopefully help understand Cassandra better.  The "living" part of the presentation comes from the __issues__ part of this repo.  If you have any questions on the presentation after it's been giving, don't worry!  Just submit a question as an issue to this repo and I'll do my best to answer it and hopefully incorporate it into the slides or this repo in some form.

Getting Started
---------------
__Running Cassandra__

A great way to get started with Cassandra is by running the official [Cassandra Docker image](https://hub.docker.com/_/cassandra/) from [Docker Hub](http://hub.docker.com).

```bash
# Start container named 'cassandra' using image cassandra with the 'latest' tag
$ docker run -d -p 9042:9042 -p 9160:9160 --name cassandra cassandra:latest
```

__Running CQL Queries__

_Option 1: Command line client_

```bash
# Start a bash shell inside the container named 'cassandra'
$ docker exec -it cassandra /bin/bash
```

```bash
# While inside the container, start the command line Cassandra client 'cqlsh'
$ cqlsh
```

_Option 2: GUI client_

One of the GUI clients available is the [DataStax DevCenter](http://docs.datastax.com/en/latest-devcenter/devcenter/features.html).  It's available for free but I personally just stick to the command line client.

CQL Examples
------------
The .cql files in this repository are meant to be a supplement to the slides.  The number at the beginning of the filename is the slide in the presentation it's associated with.  Some CQL files are associated with multiple slides; in those cases just the first slide number is used to keep filenames simple.
