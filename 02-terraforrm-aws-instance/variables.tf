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
  type = map(string)
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
    "eu-west-1" = "ami-06ce3edf0cff21f07"
    "eu-west-2" = "ami-06ce3edf0cff21f07"
  }
}

variable "cidrs" { default = [] }

variable "vpc_security_group_ids" { default = ["sg-0cf4bdfea14cba5bf"]} 
variable "web_subnet_id" { 
  default="subnet-069a9ba9b3641cd10"
}
variable "app_subnet_id" { 
  default="subnet-069a9ba9b3641cd10"
}
variable "db_subnet_id" { 
  default="subnet-069a9ba9b3641cd10"
}