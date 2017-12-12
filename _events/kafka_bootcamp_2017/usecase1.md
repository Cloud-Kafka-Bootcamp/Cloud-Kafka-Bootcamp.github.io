---
title: "Use Case 1 - Event Sourcing"
category: Kafka Bootcamp 2017
order: 2
---
![Event Sourcing Diagram](../pics/ca-kafka-event-sourcing.svg)

**When would I use this pattern?**

A new microservice (or external data source) is released and needs to be synchronized with a system-of-record in real-time.

**Materials Provided:**
* 3 Files with system-of-record (SOR) data (customer, city, transaction data)
* Kafka
* Kafka Schema Registry

**Each team will need to develop the following:**
1. Avro schema defining each of the 3 files
1. Topic(s) on Kafka to publish/consume the data to/from (Topic naming should follow this naming structure (Team)-(dataset), for example lojo-transactions and lojo-customers where 'lojo' is the team name and 'transactions' and 'customers' are the dataset name
1. Event Producers microservices that read the system-of-record data (from files and publish to topic(s) on Kafka).  Use ccloud cli to create topics required (in order to simulate events, have the process sleep for a second or so in between pubishing each message)
1. Consumer microservices that read the topics and consume the messages in real time and flush the results out to files.
1. The consumer(s) and producer(s) use Avro format to send the data in, and the Avro schemas are being tracked with the schema registry

**This scenario is finished when**
* Data from the 3 source files are being published via Avro and being captured and saved in 3 different files in real time (ie data is stored as its available rather than just at the end when all data is available)

**Scenarios to consider**
* Day-Zero Load - The microservice store must be initialized for the first time with a current state of the SOR store.
* Real-time Updates - The microservice store must continuously updated with a current updates of the SOR store.
* Bonus: Reconciliation - The SOR and microservice stores must be reconciled.