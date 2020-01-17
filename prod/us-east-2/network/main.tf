terraform {
  # Intentionally empty. Will be filled by Terragrunt.
  backend "s3" {}
}


provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

resource "aws_vpc" "primary" {
  cidr_block            = "192.168.12.0/22"
  enable_dns_hostnames  = true
  tags = {
    Name = "primary"
  }
}

resource "aws_subnet" "primary-sn-1" {
  vpc_id     = aws_vpc.primary.id
  cidr_block = "192.168.12.0/24"

  tags = {
    Name = "primary-1"
  }
}

resource "aws_subnet" "primary-sn-2" {
  vpc_id     = aws_vpc.primary.id
  cidr_block = "192.168.13.0/24"

  tags = {
    Name = "primary-2"
  }
}

resource "aws_subnet" "primary-sn-3" {
  vpc_id     = aws_vpc.primary.id
  cidr_block = "192.168.14.0/24"

  tags = {
    Name = "primary-3"
  }
}
resource "aws_subnet" "primary-sn-4" {
  vpc_id     = aws_vpc.primary.id
  cidr_block = "192.168.15.0/24"

  tags = {
    Name = "primary-4"
  }
}
