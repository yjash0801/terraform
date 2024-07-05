resource "aws_instance" "Web" {
    for_each = var.instance_name
    ami = data.aws_ami.centos.id
    instance_type = each.value

    tags = {
      Name = each.key
    }
}

resource "aws_route53_record" "dns_record" {
  for_each = aws_instance.Web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}

# output "instance_info" {
#     value = aws_instance.Web
# }