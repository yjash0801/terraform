resource "aws_instance" "Web" {
    ami = var.ami_id
    instance_type = var.instance_name == "MongoDB" ? "t3.micro" : "t2.micro"
}