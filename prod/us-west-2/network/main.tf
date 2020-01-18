terraform {
  # Intentionally empty. Will be filled by Terragrunt.
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

locals {
  network_config = var.network_configs[var.aws_region]
}

resource "aws_vpc" "primary" {
  cidr_block            = local.network_config.vpc.cidr_block
  enable_dns_hostnames  = true
  tags = {
    Name = "primary"
  }
}

resource "aws_subnet" "primary_subnets" {
  for_each = local.network_config.subnets

  vpc_id = aws_vpc.primary.id
  cidr_block = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = {
    Name = "${each.key}"
  }
}