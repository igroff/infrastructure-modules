aws_profile = "ilegitroot"

primary_subnets =  {
    us-west-2 = {
    primary-1 = {
        cidr: "192.168.12.0/24"
        az: "us-west-2a"
    }
    primary-2 = {
        cidr: "192.168.13.0/24"
        az: "us-west-2b"
    }
    primary-3 = {
        cidr: "192.168.14.0/24"
        az: "us-west-2c"
    }
    primary-4 = {
        cidr: "192.168.15.0/24"
        az: "us-west-2d"
    }
}
}