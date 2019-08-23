variable "project_name" { default = "Demo" }
variable "project_env" { default = "Production" }
variable "project_env_short" { default = "prd" }

variable "aws_region" { default = "us-west-2" }
variable "aws_profile" { default = "default" }

variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "vpc_name" { default = "" }
variable "enable_dns_hostnames" { default = true }
variable "enable_dns_support" { default = true }
variable "map_public_ip_on_launch" { default = false }
variable "enable_nat_gateway" { default = false }
variable "single_nat_gateway" { default = true }
variable "create_database_subnet_group" { default = false }

# Route53 hosted zones
variable "domain_name" { default = "example.com" }
variable "dns_public" { default = true }
variable "domain_local" { default = "demo.local" }
variable "dns_private" { default = true }

# SSH key
variable "add_key_pair" {
  description = "Should be true if you want to add ssh public key to the VPC"
  default     = true 
}

variable "ssh_public_key" {
  description = "The public key file path"
  default     = "~/.ssh/id_rsa.pub"
}

# Endpoint vars:
variable "enable_dynamodb_endpoint" {
  description = "Should be true if you want to provision a DynamoDB endpoint to the VPC"
  default     = false
}

variable "enable_s3_endpoint" {
  description = "Should be true if you want to provision an S3 endpoint to the VPC"
  default     = true
}

variable "tags" {
  default = {}
}
