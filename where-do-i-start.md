# Where Do I Start?

Getting into tech can be a little daunting. There are so many things to learn, and so many disciplines!

We obviously can't provide an answer here, but hopefuly can provide a few little hooks below. As I wrote this, it was already getting expansive while by no means being complete. Please feel free to send pull-requests for amendments and additions!

Hopefully the following can help provide some context. As you look into concepts, just pay attention to what you're enjoying learning about, and also what you don't. You don't need to know everything - nobody can - but it's useful to have a general feeling for what's involved.

And if you're wanting to get into IT as a career, I have to recommend ["How to pick a career (that actually fits you)"](https://waitbutwhy.com/2018/04/picking-career.html) by the wonderful Tim Urban.

# In Software Engineering / Computer Science

This is by no means an exaustive list, but just offers some places to get started.

## General Concepts

 * [Object Oriented Programming](https://en.wikipedia.org/wiki/Object-oriented_programming) and [SOLID](https://en.wikipedia.org/wiki/SOLID)
 * [Functional Programming](https://www.lihaoyi.com/post/WhatsFunctionalProgrammingAllAbout.html) (Li Haoyi is amazing!)
 * [Test-Driven Development (TDD)](https://medium.com/@dees3g/a-guide-to-test-driven-development-tdd-with-real-world-examples-d92f7c801607)

## Architecture

How can you design your systems to support your business functions?

You basically have software which transforms and presents your data, databases to store your data, and queues to stream data and facilitate integration/communication between software systems.

We want to thing about ["single responsibility principle"](https://en.wikipedia.org/wiki/Single-responsibility_principle), keeping things loosely coupled, scalable, maintainable, testable, and above all fit for purpose.

You can think of tightly-coupled systems like the game [mousetrap](https://en.wikipedia.org/wiki/Mouse_Trap_(board_game)), where a single point of failure would break the whole system. An an example of a loosely-coupled system would be an orchestra, where the music can continue even if the cellist plays the wrong note.

As a general rule, keep things as simple as possible to serve the business purpose, but no simpler :-)

Some toolings and concepts to get started are:

 * [C4 Diagrams](https://c4model.com/)
 * [Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design)

### Security

At a high level, this breaks down to concepts such as data in motion and data at rest, governance, access controls, and principal of least priviledge.

* [OWASP](https://www.restapitutorial.com/)
* ... this just gets too massive. Have a google and search it up :-)


### Front-End

 * A good understanding of [javascript](https://github.com/kindservices/awesome-typescript) and [typescript](https://github.com/kindservices/awesome-typescript)
 * frameworks such as [svelte](https://svelte.dev/), [react](https://react.dev/), [vue](https://vuejs.org/) or [nextJS](https://nextjs.org/)
 * a solid understanding of [css](https://github.com/kindservices/awesome-css)


### Back-End

 * [REST services](https://www.restapitutorial.com/)
 * [GraphQL](https://graphql.org/)
 * Protocols ([avro](https://avro.apache.org/), [protobuf](https://protobuf.dev/), [json](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON), [MessagePack](https://msgpack.org/index.html), ...)
 * [Concurrency](https://typelevel.org/cats-effect/docs/2.x/concurrency/basics)

### Databases

There's a lot here, and no such thing as "the best database", as they all serve different purposes. It can get overwhelming, but a simple way to think about databases is just how you store files on your local computer.

For example, imagine you're taking notes on some classes you're taking. What do you save the files as?
Do you call them "notes-2023-10-16.txt"? Or "geometry-1.txt"? Is there a folder structure?
How you've organised them on your computer makes a big difference when it comes time to find that information again. Can you find what you're looking for just by the file name or directory stucture, or do you have to open up every file and search its contents?

And what happens if your computer breaks? Where's the back-up? How fresh (up-to-date) is it? Did you have to wait for that backup to be created before you considered your notes saved?

In general, it's worth being aware of:
 * [SQL syntax](https://en.wikipedia.org/wiki/SQL_syntax)
 * [OLAP](https://en.wikipedia.org/wiki/Online_analytical_processing)
 * [OLTP](https://en.wikipedia.org/wiki/Online_transaction_processing)



And some fun concepts like:
 * [CAP Theorem](https://en.wikipedia.org/wiki/CAP_theorem)
 * [RAFT protocol](https://raft.github.io/)
 * [Eventual Consistency](https://en.wikipedia.org/wiki/Eventual_consistency)


Databases come in two flavours:
 * Relational Databases ([MySQL](https://www.mysql.com/), [PostgreSQL](https://www.postgresql.org/))
 * NoSQL (not-only SQL) databases:
    * [Time-series](https://en.wikipedia.org/wiki/Time_series_database) (like [InfluxDB](https://www.influxdata.com/))
    * [Document-Oriented](https://en.wikipedia.org/wiki/Document-oriented_database) (like [MongoDB](https://www.mongodb.com/), [Firestore](https://firebase.google.com/docs/firestore))
    * [Column-Oriented](https://en.wikipedia.org/wiki/Column-oriented_DBMS) (like [Apache Pinot](https://pinot.apache.org/))
    * [Graph Databases](https://en.wikipedia.org/wiki/Graph_database) (lke [Neo4j](https://neo4j.com/) or [ArrangoDB](https://arangodb.com/) )
    * [Key/Value](https://en.wikipedia.org/wiki/Key%E2%80%93value_database) (like [Redis](https://redis.com/) or [RocksDB](https://en.wikipedia.org/wiki/RocksDB))

### In DevOps
 
 * [12 factor apps](https://12factor.net/)
 * Continuous Integration
 * Continuous Development
 * Security Scanning
 * Observability
 * Site Reliability

## Data

Data - the information stored in our systems, which is a separate branch of study all of its own.

### Data Science

This is about understanding and finding patterns in your data so as to understand and unlock value for your business and customers.

 * [Probability]()
 * [Bayes' Rule]()
 * [Probability Distribution]()

#### Descriptive Analytics
 * Estimators
 * Outliers and Correlation

#### Predictive Analytics
 * Classification and Regression Trees
 * Support Vector Machines
 * Neural Networks
 * Large Language Models

#### Prescriptive Analytics
 * Linear Programming
 * Objective-Functions

### Data Engineering

The data engineering is about security, accurately and quickly piping your data through your organisation.

It typically falls into "Extract, Transform Load" or (ETL) programms, or a varient called "Extract, Load, Transform".

We have to be considerate of GDPr concerns, latency, throughput.
