# Project Title:
Terraform AWS S3 Static Website Hosting

# Project Description:
In this project, I've created a robust infrastructure using Terraform and AWS S3 to host static websites effortlessly. This project serves as a comprehensive guide to automate the deployment of a static website hosting solution on AWS.

### Key Components and Features:
- Terraform Infrastructure as Code (IaC):
  - Demonstrates the power of Terraform for provisioning AWS resources consistently and efficiently.
- AWS S3 Bucket:
  - Utilizes S3 buckets optimized for website hosting, ensuring seamless content delivery and scalability.
- Content Upload and Management:
  - Provides clear instructions and scripts for easy uploading and managing website content within the S3 bucket.

### Prerequisites:
1. `AWS Account:` Sign up for an AWS account if you haven't already.
2. `AWS CLI:` Install the AWS Command Line Interface.
3. `Terraform:` Install Terraform on your local machine.
4. `Basic Knowledge:` Familiarize yourself with AWS and Terraform basics.


### Module Structure:
1. `index.html:` Main HTML file to be hosted on S3.
2. `error.html:` (optional): Custom error page for S3 bucket.
3. `provider.tf:` Configures the AWS provider and its settings.
4. `s3.tf:` Defines the S3 bucket, objects, and website configuration.
5. `policy.tf:` Sets up necessary bucket policies for secure access.
6. `output.tf:` Provides the website URL for easy access.
7. `variables.tf:` Declares input variables for customization.


### Usage:
1. Installation:
    - Ensure Terraform is installed on your machine.
    - Clone this Git repository to your local system.
2. Configuration:
    - Modify values in variables.tf to suit your requirements.
2. Deployment:
    - Initialize the working directory with terraform init.
    - Review the execution plan with the terraform plan.
    - Create AWS resources by running terraform apply.

### Explanation of Terraform Commands:
1. `terraform init:` Initializes the working directory and downloads necessary providers.
2. `terraform plan:` Generates an execution plan showing what Terraform will do when applied.
3. `terraform apply:` Applies the changes required to reach the desired state defined in the configuration files.


### Explanation of Variables:
- `bucket_name:` Name of the S3 bucket to be created.
- `key_file:` Name of the main HTML file.
- `content_type:` MIME type of the content.
- `block_public_acls:` Whether to block public ACLs.
- `block_public_policy:` Whether to block public bucket policies.
- `ignore_public_acls:` Whether to ignore public ACLs.
- `restrict_public_buckets:` Whether to restrict public buckets.
- `policy_action:` Action allowed in the bucket policy (e.g., s3:GetObject).
