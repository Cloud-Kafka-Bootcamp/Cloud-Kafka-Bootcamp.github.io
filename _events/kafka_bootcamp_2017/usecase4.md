---
title:  "Use Case 4 - Event Orchestration"
category: Kafka Bootcamp 2017
order: 5
---
![Event Orchestration](../pics/ca-kafka-event-orchestration.svg)

**When would I use this pattern?**

An workflow requires a series of steps to be executed through a process

**Materials provided:**

Same as scenario's 1,2 and 3

**Each team will need to develop the following (where <team> is the team name):**

* EO-<Team> schema
* EO-<Team>  Topic
* Event Producers w/ client side interceptors
* Producer/Consumers w/ client side interceptors
* Output Files

**Scenarios**

For the checks, pass/fail are randomly generated.

* Workflow: When a new customer is detected, the customer and balance are validated.   If both checks are successful, customer is output to the verified customer file.

* Error Handling: After both are checked, if either check fails, the customer is reprocessed.