#!/bin/bash

# Make sure to name your script start-stop-ec2.sh :) 

# Replace these values with your own AWS region and instance IDs
AWS_REGION="us-west-2" # Please make sure you're using the right region for your EC2 Instance
INSTANCE_IDS="i-02878a844a070ed15" # You can add multiple instance IDS here 

start_instances() {
    echo "Starting EC2 instances..."
    aws ec2 start-instances --instance-ids $INSTANCE_IDS --region $AWS_REGION

    # Retrieve and display public IP addresses 
    public_ips=$(aws ec2 describe-instances --instance-ids $INSTANCE_IDS --query 'Reservations[].Instances[].PublicIpAddress' --output text --region $AWS_REGION)
    echo "Public IP addresses: $public_ips"
}

stop_instances() {
    echo "Stopping EC2 instances..."
    aws ec2 stop-instances --instance-ids $INSTANCE_IDS --region $AWS_REGION

    # Retrieve and display public IP addresses
    public_ips=$(aws ec2 describe-instances --instance-ids $INSTANCE_IDS --query 'Reservations[].Instances[].PublicIpAddress' --output text --region $AWS_REGION)
    echo "Public IP addresses: $public_ips"
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

