This Terraform code deploys next configuration to AWS:
- Creates test Ubuntu 24.04 EC2 instance. I used t2.micro to be my instance type as it is free tier eligible and is good enought for simple Docker deployment
- Secirity Group is not defined in configuration of ec2 resource so it will use default SG that is set to allow SSH connection from my public IP
- Public SSH key is set to use my key in .pub file (path to this file is defined in .tfvars)
- Additionaly, remote backend is configured to store Terraform state file is S3 bucked
- .gitignore file contains patterns to ignore terraform plugin for AWS and sensitive information, such as state file and .tfvars file   
