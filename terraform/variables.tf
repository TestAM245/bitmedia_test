variable "aws_region" {
  type = string
  default = "eu-central-1"
}

variable "ami_id" {
  type = string
  default = "ami-0e04bcbe83a83792e"
}

variable "ec_type" {
  type = string
  default = "t2.micro"
}

variable "public_key_path" {
  description = "Path to the SSH public key file"
  type        = string
  sensitive   = true
}