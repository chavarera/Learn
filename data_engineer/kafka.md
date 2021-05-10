# Kafka

Using confluent kafka platform  [confluent-platform](https://docs.confluent.io/)

## Installation


1. Install openjdk version "1.8.0_222" (all servers)-
```bash
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
```

2. Download confluent kafka platform which include zookeeper,kafka,schema registries
[confluent-platform](https://docs.confluent.io/current/installation/installing_cp/zip-tar.html#prod-kafka-cli-install)

```bash     
curl -O http://packages.confluent.io/archive/5.3/confluent-5.3.1-2.12.tar.gz
tar xzf confluent-5.3.1-2.12.tar.gz
```

3. Create myid files(If you using multiple servers use different myid on each server)
```bash
mkdir /var/lib/zookeeper
cd /var/lib/zookeeper
touch myid
echo “1” >> myid
```
4. Edit Zookeeper configuration(confluent/etc/kafka/zookeeper.properties)
```
tickTime=2000
dataDir=/var/lib/zookeeper/
maxClientCnxns=60
clientPort=2181
# list of servers
server.1=localhost:2888:3888
```
5. Edit kafka Configuration(confluent/etc/kafka/server.properties)
```
broker.id=1
log.dirs=/tmp/kafka-logs
zookeeper.connect=localhost:2181	
```
6. Start zookeeper and kafka
    - Zookeeper start command:
      ```
      ./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties
      ```   

    - Kafka start command:
      ```
      ./bin/kafka-server-start ./etc/kafka/server.properties
      ```
