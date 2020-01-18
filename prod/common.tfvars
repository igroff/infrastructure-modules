aws_profile = "ilegitroot"


network_configs = {
  us-west-2 = {
    vpc = {
      cidr_block = "192.168.12.0/22"
    }
    subnets = {
      primary-1 = {
        cidr : "192.168.12.0/24"
        az : "us-west-2a"
      }
      primary-2 = {
        cidr : "192.168.13.0/24"
        az : "us-west-2b"
      }
      primary-3 = {
        cidr : "192.168.14.0/24"
        az : "us-west-2c"
      }
      primary-4 = {
        cidr : "192.168.15.0/24"
        az : "us-west-2d"
      }
    }
  }
  us-east-2 = {
    vpc = {
      cidr_block = "192.168.16.0/22"
    }
    subnets = {
      primary-1 = {
        cidr : "192.168.16.0/24"
        az : "us-east-2a"
      }
      primary-2 = {
        cidr : "192.168.17.0/24"
        az : "us-east-2b"
      }
      primary-3 = {
        cidr : "192.168.18.0/24"
        az : "us-east-2c"
      }
      primary-4 = {
        cidr : "192.168.19.0/24"
        az : "us-east-2d"
      }
    }
  }
}