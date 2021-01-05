provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.41"
}

terraform {
  backend "s3" {
    bucket  = "eu-west-1-tfcloud"
    key     = "dev/eu-west-1-tfcloud.tfstate"
    region  = "eu-west-1"
    encrypt = true
  }
}

resource "aws_instance" "ec2" {

  ami = "ami-04b1ddd35fd71475a"

  instance_type               = var.ec2_instance.instance_type
  iam_instance_profile        = var.ec2_iam_instance_role
  vpc_security_group_ids      = var.security_group_ids
  subnet_id                   = var.private_subnet_id
  associate_public_ip_address = true
  key_name                    = "TTCS-KEY"


  
}
