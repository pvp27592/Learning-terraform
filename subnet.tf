resource "aws_subnet" "publicsubnet" {
    vpc_id = aws_vpc.customvpc.id
    cidr_block = cidrsubnet(aws_vpc.customvpc.cidr_block, 3, 1)
    map_public_ip_on_launch = "true"
    availability_zone = var.availability_zone
    tags = {
        Name = "publicsubnet"
    }
}


