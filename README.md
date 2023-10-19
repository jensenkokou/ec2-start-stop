## EC2 Instance Start/Stop Script

This bash script allows you to start and stop your Amazon Elastic Compute Cloud (EC2) instances in a specific AWS region. It utilizes the AWS Command Line Interface (AWS CLI) and should be configured with your AWS credentials to work properly.

### Prerequisites

- **AWS CLI**: Make sure you have the AWS CLI installed and configured with the necessary credentials. If not, you can install it and configure it by following the [official AWS CLI documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

### Usage

<details>
<summary><b>Expand for Usage Instructions</b></summary>

1. Replace the following values in the script with your own:

   - `AWS_REGION`: Your AWS region (e.g., "us-east-1").
   - `INSTANCE_IDS`: The IDs of the EC2 instances you want to start or stop. You can add more instance IDs separated by spaces.

2. Save the script to a file, for example, `start-stop-ec2.sh`.

3. Make the script executable with the command:

chmod +x start-stop-ec2.sh


4. Run the script with one of the following arguments to start or stop your EC2 instances:
- To start EC2 instances:
  ```
  ./start-stop-ec2.sh start
  ```
- To stop EC2 instances:
  ```
  ./start-stop-ec2.sh stop
  ```

</details>

### Output

The script will provide output similar to the following when starting or stopping EC2 instances:

<details>
<summary><b>Expand for Output Example</b></summary>

```json
{
 "StartingInstances": [
     {
         "CurrentState": {
             "Code": 0,
             "Name": "pending"
         },
         "InstanceId": "i-02878a844a070ed15",
         "PreviousState": {
             "Code": 80,
             "Name": "stopped"
         }
     }
 ]
}


This output confirms the initiation of the start/stop process for the specified instances and provides information about the current and previous states of each instance.

```
</details>

### Notes
Ensure that your AWS CLI is properly configured with the necessary IAM permissions to start and stop EC2 instances.
Always exercise caution when starting or stopping EC2 instances, as this can affect your running services and applications. Make sure you have appropriate backups and safeguards in place.
