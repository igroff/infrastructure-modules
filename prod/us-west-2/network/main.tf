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

resource "aws_subnet" "primary_subnets" {
  for_each = local.primary_subnets

  vpc_id = aws_vpc.primary.id
  cidr_block = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = {
    Name = "${each.value["name"]}"
  }
}