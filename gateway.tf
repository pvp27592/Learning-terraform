resource "aws_internet_gateway" "customgw" {
    vpc_id = aws_vpc.customvpc.id
    tags = {
      Name = "customgw"
    }
}


