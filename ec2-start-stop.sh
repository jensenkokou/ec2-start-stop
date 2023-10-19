#!/bin/bash

# Make sure to name your script ec2-start-stop.sh :) 

# Replace these values with your own AWS region and instance IDs
AWS_REGION="us-east-1"
INSTANCE_IDS="i-1234567890abcdef0 i-0987654321fedcba0" # You can list multiple instances or just one. 

start_instances() {
    echo "Starting EC2 instances..."
    aws ec2 start-instances --instance-ids $INSTANCE_IDS --region $AWS_REGION
}

stop_instances() {
    echo "Stopping EC2 instances..."
    aws ec2 stop-instances --instance-ids $INSTANCE_IDS --region $AWS_REGION
}

case "$1" in
    start)
        start_instances
        ;;
    stop)
        stop_instances
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

exit 0
