provider "aws" {
  profile    = "default"
  region = "${var.region}"
  //shared_credentials_file = "${var.shared_credentials_file}"
  version    = "~>2.10"
}

data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

resource "aws_instance" "example" {
  ami           = "ami-06ce3edf0cff21f07"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-0cf4bdfea14cba5bf"]
  subnet_id="subnet-069a9ba9b3641cd10"
  count = 2
  tags = {
        Name = "thingx-demo-${count.index}"
    }
}