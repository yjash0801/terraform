variable "instance_name" {
    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t2.micro"
        rabbitmq = "t2.micro"
        mysql = "t3.micro"
        web = "t2.micro"
        catalogue = "t2.micro"
        user = "t2.micro"
        cart = "t2.micro"
        shipping = "t3.micro"
        payment = "t2.micro"
        dispatch = "t2.micro"
    }
}

variable "zone_id" {
    type = string
    default = "Z035925639NOHIW62OJ2G"
}

variable "domain_name" {
    type = string
    default = "mechanoidstore.online"
}