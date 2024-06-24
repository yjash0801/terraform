output "instance_details" {
  value = aws_instance.Web.id
}

output "public_ip" {
  value = aws_instance.Web.public_ip
}

output "private_ip" {
  value = aws_instance.Web.private_ip
}