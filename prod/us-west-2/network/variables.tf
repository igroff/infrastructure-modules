variable "aws_region" {}

variable "aws_profile" {
    type = string
}

locals  {
  primary_subnets =  {
    one = {
      name: "primary-1"
      cidr: "192.168.12.0/24"
      az: "${var.aws_region}a"
    }
    two = {
      name: "primary-2"
      cidr: "192.168.13.0/24"
      az: "${var.aws_region}b"
    }
    three = {
      name: "primary-3"
      cidr: "192.168.14.0/24"
      az: "${var.aws_region}c"
    }
    four = {
      name: "primary-4"
      cidr: "192.168.15.0/24"
      az: "${var.aws_region}d"
    }
  }
}