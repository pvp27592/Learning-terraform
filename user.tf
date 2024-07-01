resource "aws_iam_user" "adminuser"{
  count = "${length(var.username)}"
  name = "${element(var.username,count.index)}"
  
}
