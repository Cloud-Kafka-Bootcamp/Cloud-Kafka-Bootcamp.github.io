---
title:  "Use Case 3 - Live Reports"
category: Kafka Bootcamp 2017
order: 4
---
![Live Reports diagram](../pics/ca-kafka-live-reports.svg)

**When would I use this pattern?**
A live report of the current data streams produced in real-time.

**Materials provided:**

Same as scenario's 1 and 2

**Each team will need to develop the following**
* appropriate schema and topics
* appropriate producer(s)
* Avro schema usage
* consumer microservice joins the different streams of datasets
  * consumer produces a report that shows transactions along with the first and last name of the customer making the transaction
  * use kafka ktables and ksql to join customer and transactions

**Scenarios**
* Stream enrichment - Join two streams of data that are flowing in
* KSQL - this is using a new technology from Confluent, although you could achieve the result but using java and data structures, bonus points to you if you can achieve this using ktables and ksql