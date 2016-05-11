#!/bin/bash

echo \
  "{ \
    \"cloudwatch.emitMetrics\": $CLOUDWATCH_EMIT_METRICS, \
    \"kinesis.endpoint\": \"kinesis.$AWS_REGION.amazonaws.com\", \
    \"cloudwatch.endpoint\": \"monitoring.$AWS_REGION.amazonaws.com\", \
    \"flows\": [ \
      { \
        \"filePattern\": \"$KINESIS_FILE_PATTERN\", \
        \"kinesisStream\": \"$KINESIS_STREAM\", \
        \"partitionKeyOption\": \"RANDOM\"
      }, \
      { \
        \"filePattern\": \"$FIREHOSE_FILE_PATTERN\", \
        \"deliveryStream\": \"$FIREHOSE_DELIVERY_STREAM\" \
      } \
    ] \
  }" > /etc/aws-kinesis/agent.json
