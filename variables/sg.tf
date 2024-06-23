resource "aws_security_group" "roboshop_allow_all" {
    name = var.sg-name
    description = var.sg-description
    tags = var.sg-tags

      ingress {
        description = "Allow all inbound rules"
        from_port        = var.inbound-from-port
        to_port          = var.inbound-from-port
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
        #ipv6_cidr_blocks = ["::/0"]
     }

    egress {
        description = "Allow all outbound rules"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }
}