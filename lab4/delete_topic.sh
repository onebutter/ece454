#!/bin/sh

#
# Wojciech Golab, 2017
#

source ./settings.sh

${KAFKA_HOME}/bin/kafka-topics.sh --delete --zookeeper $ZKSTRING --topic $1
