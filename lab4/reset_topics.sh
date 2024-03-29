#!/bin/sh

#
# Wojciech Golab, 2017
#

source ./settings.sh

unset JAVA_TOOL_OPTIONS
export JAVA_HOME=/usr/lib/jvm/java-1.8.0
JAVA=$JAVA_HOME/bin/java
JAVA_CC=$JAVA_HOME/bin/javac


CLASSPATH=.:"${KAFKA_HOME}/libs/*"
export CLASSPATH

echo --- Resetting topics

./delete_topic.sh $STOPIC
./create_topic.sh $STOPIC
./delete_topic.sh $CTOPIC
./create_topic.sh $CTOPIC
./delete_topic.sh $OTOPIC
./create_topic.sh $OTOPIC

./list_topics.sh

