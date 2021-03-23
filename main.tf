terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "node1" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t2.micro"
  key_name      = "Uri-key"

  tags = {
    Name = "Bastion"
  }
}
resource "aws_instance" "node2" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t2.micro"
  key_name      = "Uri-key"

  tags = {
    Name = "Worker1"
  }
}
resource "aws_instance" "node3" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t2.micro"
  key_name      = "Uri-key"

  tags = {
    Name = "Worker2"
  }
}
resource "aws_instance" "node4" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t2.micro"
  key_name      = "Uri-key"

  tags = {
    Name = "Worker3"
  }
}
resource "aws_instance" "node5" {
  ami           = "ami-000e7ce4dd68e7a11"
  instance_type = "t2.micro"
  key_name      = "Uri-key"

  tags = {
    Name = "HAProxy"
  }
}

