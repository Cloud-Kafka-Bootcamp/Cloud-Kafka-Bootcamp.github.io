---
title:  "Use Case 2 - Business Rules"
category: Kafka Bootcamp 2017
order: 3
---
![Business Rules](../pics/ca-kafka-business-rules.svg)

**When would I use this pattern?**

A series of business rules must be applied in order to a series of data sets. Each rule is applied in sequence

**Materials Provided:**

Same as scenario 1

**Each team will need to develop the following:**
* appropriate schema and topics
* appropriate producer(s)
* Avro schema usage
* Consumer microservice(s) that consume the published data
  * somewhere here the data will need to be filtered (only keep transactions >= $1000)
  * and then aggregation will need to be applied (for each customer show the last 30 seconds average transaction)
  * the filtered data should be published to a new topic in avro format
  * the aggregated data should be published to a new topic in avro format

**Scenarios**
* Business Rule Order - Filtering must occur before aggregation
* Filtering - The filter rule selects all transactions greater than 1000 CAD and publishes result to topic.
* Aggregation / Windowing - The aggregation rule provides a count, a total sum, an average sum of customer transactions over a 30-second hopping windows and publishes to a topic

**This scenario is finished when**
* Data from 3 source files are flowing into the consumer(s) which applies filtering and aggregation and is publishing those results back to topic(s) in real time