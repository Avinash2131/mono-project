provider "aws"  {
region = "ap-south-1"
access_key = "AKIAYINUTK2FHFZ5KAG4"
secret_key = "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"
}
resource "aws_instance" "key" {
ami = "ami-0899663faf239dd8a"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
