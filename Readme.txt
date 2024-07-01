module "terraform_modules" {
  source = "/root/prashant/terraform_modules"

  aws_region        = "ap-south-1"
  file_name         = "tf_key"
  ec2_instance_name = "test"
  key_pair_name     = "tfkey"
  cidr_block        = "15.0.0.0/16"
  counter           = 2
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  instance_tag      = ["main_server", "test_server", "test_server"]

}
