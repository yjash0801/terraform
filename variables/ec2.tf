resource "aws_instance" "Web" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.roboshop_allow_all.id]
    tags = var.tags
}