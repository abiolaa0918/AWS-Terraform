# AWS-Terraform
Built a Terraform script to provision a basic SIEM based on Elastic's SIEM functionality


Steps to follow:

1. Create a new directory for your project and navigate to it in the terminal.

2. Create a new file named "main.tf" in the project directory.

3. In the "main.tf" file, define the provider and resource for the Elasticsearch cluster.

4. Define the resource for the Kibana instance and associate it with the Elasticsearch cluster.

5. Define the resource for the S3 bucket and the Lambda function, that will be used to collect and parse the logs, and send them to Elasticsearch.

6. Define the resource for the Cloudwatch events and the lambda function, that will be used for alerting.

7. Run the Terraform script to provision the SIEM infrastructure on the cloud provider.

  i. "terraform init"
  ii. "terraform apply"

8. Once the infrastructure is provisioned, you can use Kibana to access the Elasticsearch cluster and start creating visualizations and dashboards to correlate the logs from your web application.

9. You can also set up alerts in Kibana to notify you when certain conditions are met, or use CloudWatch events to trigger Lambda functions for alerting.
