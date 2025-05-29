# Simple VPC + EC2 Setup with Terraform

This project provides a minimal AWS infrastructure setup using Terraform.  
It creates a basic VPC, Security Group, and an EC2 instance.

*This time, I decided not to configure the EC2 instance using Terraform, as the process involves using a specific AMI, retrieving its ID, and manually managing the instance—such as terminating it to reduce costs and managing it with snapshots. For these tasks, a manual setup is more straightforward.
## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- [AWS CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) installed
- AWS credentials configured (`~/.aws/credentials`)
- An existing AWS profile in your local environment

## Setup

1. **Clone this repository.**

2. **Create a `terraform.tfvars` file** in the root directory with the following content, and update the values for your environment:

   ```hcl
   aws_region  = "your-aws-region"
   aws_profile = "your-aws-profile-name"
   availability_zone = "us-east-1a" # etc
   ```

## Terraform Command

#### Initialize the Terraform working directory and download necessary provider plugins.
```hcl
terraform init
```
#### Preview the execution plan without making any changes. Useful for checking what will be created or modified.
```hcl
terraform plan -var-file=terraform.tfvars
```
#### Apply the Terraform configuration and create the defined infrastructure on AWS.
```hcl
terraform apply -var-file=terraform.tfvars
```
#### Destroy all resources that were created by this Terraform configuration.
```hcl
terraform destroy -var-file=terraform.tfvars
```
