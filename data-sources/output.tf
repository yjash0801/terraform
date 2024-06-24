output "centos_ami" {
    value = data.aws_ami.centos.id
}

output "aws_ami" {
    value = data.aws_ami.amazon_linux2.id
}

output "vpc_id" {
    value = data.aws_vpc.default
}