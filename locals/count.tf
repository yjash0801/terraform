# resource "aws_instance" "Web" {
#     #count = 11
#     count = length(var.instance_name)
#     ami = var.ami_id
#     instance_type = local.instance_type

#     tags = {
#       Name = var.instance_name[count.index]
#     }
# }

# resource "aws_route53_record" "dns_record" {
#   count = length(var.instance_name)
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = local.ip_address
# }

resource "aws_instance" "Web" {
    ami = var.ami_id
    instance_type = local.instance_type

    tags = {
      Name = "locals"
    }
}
