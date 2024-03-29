terraform {
  # cloud {
  #   organization = "rares-dev"
  #   workspaces {
  #     name = "learn-tfc-aws"
  #   }
  # }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-0a23a9827c6dab833"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

