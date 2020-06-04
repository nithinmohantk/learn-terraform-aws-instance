variable "region" {
  description = "AWS region to use for provisioning"
  default     = "eu-west-1"
}

variable "shared_credentials_file" {
  description = "Credentials for authentication"
  default     = "C:\\/Users\\/nithi\\/.aws\\/credentials"
}
variable "vpc_id" {
  description = "VPC for resource to be created"
  default     = "vpc-04866e9290d5384d2"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
  }
}