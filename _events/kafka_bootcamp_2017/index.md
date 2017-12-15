---
title: Welcome to Kafka Bootcamp
category: Kafka Bootcamp 2017
order: 1
---
## Preparing for the bootcamp
The bootcamp will start off with an introductory talk about Kafka which will describe the 4 scenarios included in the bootcamp and then launch into a session of hands on development.  People will be asked to form 4 - 6 person groups.  Groups can collaborate and work on the scenarios together.

### Environment
The bootcamp will be done on your **_personal laptop_**, connecting to an instance of Confluent Cloud (Apache Kafka hosted on AWS).

There are repos to get you going:

* [Starter producer](https://github.com/Zeus-Cloud-Team/kafka-producer-starter)
* [Starter consumer](https://github.com/Zeus-Cloud-Team/kafka-consumer-starter)
* [Confluent Cloud Cli tool](https://github.com/Zeus-Cloud-Team/confluent-cloud-cli)

### Preparing your personal laptop
1. Make sure your laptop has a JDK more recent than [1.8.0_101](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html), without at least this version you won't be able to connect to Confluent Cloud. In addition to this version being installed it should also be the active java runtime for your maven (see step 3) and your IDE (see step 2)
2. Your laptop should have your favorite IDE for java development (Intellij, Eclipse, Netbeans)
3. Have [maven](https://maven.apache.org/download.cgi) installed and available for use on the command line.

> Optional: if you want, you could install and run [Kafka](https://www.confluent.io/download/) locally and use that during the bootcamp as long as you're not using windows, there's nothing special about Confluent Cloud Kafka that you can't get by running locally.

### Setup Confluent Cloud
1. Install [ccloud cli](https://github.com/Zeus-Cloud-Team/confluent-cloud-cli), you'll need the information from step 2 to connect ccloud cli to the instance of Confluent Cloud we're using.  Once you connect familiarize yourself with administration of topics.
2. Confluent Cloud [connection details](../config/connection-info.yml)
  * Bootstrap servers list: `r0.kafka.rbc-hackathon.aws.confluent.cloud:9092,r0.kafka.rbc-hackathon.aws.confluent.cloud:9093,r0.kafka.rbc-hackathon.aws.confluent.cloud:9094`
  * Schema registry server: `http://ec2-35-182-31-180.ca-central-1.compute.amazonaws.com:8081`
  * Api key(username): **Will be provided during the bootcamp on the #setup Slack channel**
  * Api secret(password): **Will be provided during the bootcamp on the #setup Slack channel**
3. Intialise ccloud using `ccloud init`
4. You will have to follow these guidelines when using ccloud cli to administer Confluent Cloud Kafka
   * If part of a team select one person from the team and use that persons first name to prefix all topics you interact with
   * **NEVER modify a topic that you do not own, or are not working on as part of a team**

> There is only 1 account, so all participants will have the ability to modify every other topic.  Like Uncle Ben said, with great power comes great responsibility.

### Preparing your brain
This bootcamp is targeted for people who are familiar with Kafka.  Coming into this event you should be armed with knowledge.

1. [Kafka - The Definitive Guide](https://www.confluent.io/wp-content/uploads/confluent-kafka-definitive-guide-complete.pdf)
2. [You should know about Avro and schemas](https://www.confluent.io/blog/avro-kafka-data/)
3. Reach out to the Cloud team to get more recommended reading material to prepare yourself
4. [Download Kafka to run locally](https://www.confluent.io/download/) and try out the scenarios listed here.
5. Review the [bootcamp starter code](https://github.com/Zeus-Cloud-Team), clone it, build it, run it **but make sure you use your own topics to run it against**

### Is there any sample code I can start off with?
1. Yes you can start off with the Kafka Bootcamp starter code
    * [Starter producer code](https://github.com/Zeus-Cloud-Team/kafka-producer-starter)
      * Contains the 3 data files in its /resources/data folder
    * [Starter consumer code](https://github.com/Zeus-Cloud-Team/kafka-consumer-starter)
2. During the bootcamp talk to your team and agree on a naming prefix for your teams topics (ie lojo-topicnames where 'lojo' is the team name)
3. Use ccloud cli to create the required topics
4. git clone the producer code
  1. update its properties to include username and password (to be provided to you by cloud team) and a value for a local writable.dir
  2. update the property value for topic name and group id to use your own topic and consumer groups (consumer groups get auto created so no need to pre-create them, but topics have to be created beforehand with ccloud cli)
5. run it either from your IDE or from command line (see howToRun.sh for more details)
6. the producer codebase has the 3 files used in the bootcamp in its local /resources/data dir, when you run the code it will convert each row of each file to an avro message and publish it to the topic defined
7. apply the same changes to the consumer starter code and run it, you should see the same messages that are being produced getting consumed.  The consumer starter code base only comes with a listener for the transactions topic.
8. These are starter code repos that're meant to be extended so make it your own and use it as a tool to help solve the use cases described below