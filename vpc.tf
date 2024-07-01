resource "aws_vpc" "customvpc" {
    cidr_block = var.cidr_block
    instance_tenancy = "default"
    enable_dns_hostnames = "true"
    enable_dns_support = "true"
    tags = {
      Name = "customvpc"
    }
}

