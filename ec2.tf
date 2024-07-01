resource "aws_instance" webserver {
    count = var.counter 
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.publicsubnet.id
    associate_public_ip_address = "true"
    key_name = var.key_pair_name
    tags = {
     Name = var.instance_tag[count.index]
 }
    vpc_security_group_ids = [aws_security_group.web_sg_terraform.id]
    user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install httpd -y
    echo "<html><h1>webpage 1(webserver by terraform)</h1></html>" > /var/www/html/index.html
    service httpd start
    chkconfig httpd on
    EOF
}


