provider "aws"  {
region = "ap-south-1"
access_key = "AKIAYINUTK2FM2EBJZEM"
secret_key = "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"
}
resource "aws_instance" "key" {
ami = "ami-0899663faf239dd8a"
instance_type = "t2.micro"
key_name = "projectkey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
