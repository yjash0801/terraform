resource "aws_security_group" "roboshop_allow_all" {
    name = "dynamic demo"
    description = "dynamic demo"

      dynamic ingress {

        for_each = var.ingress
        content {
            description      = ingress.value["description"]
            from_port        = ingress.value["from_port"]
            to_port          = ingress.value["to_port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]
        }
     }


    egress {
        description = "Allow all outbound rules"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "dynamic demo"
    }
}