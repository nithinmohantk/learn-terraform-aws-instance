provider "aws" {
  profile = "default"
  region  = var.region
  //shared_credentials_file = "${var.shared_credentials_file}"
  version = "~>2.10"
}

data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "thingx-demo-terraform-bucket"
  acl    = "private"
}
resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type          = "t2.micro"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.web_subnet_id
  count                  = 2
  tags = {
    Name = "thingx-demo-${count.index}"
  }

  depends_on = [aws_s3_bucket.example]
  provisioner "local-exec" {
    command = "echo ${aws_instance.example[0].public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example[0].id
}

resource "aws_key_pair" "example2" {
  key_name   = "example2key"
  public_key = file(".ssh/terraform.pub")
}

resource "aws_instance" "example2" {
  key_name               = aws_key_pair.example2.key_name
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.web_subnet_id
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(".ssh/terraform")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}