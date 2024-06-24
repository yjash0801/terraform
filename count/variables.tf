variable "instance_name" {
    type = list
    default = ["mongodb","redis","rabbitmq","mysql","web","catalogue","user","cart","shipping","payment","dispatch"]
}

variable "t3_instance" {
    type = list
    default = ["mongodb","mysql","shipping",]
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    type = string
    default = "Z035925639NOHIW62OJ2G"
}

variable "domain_name" {
    type = string
    default = "mechanoidstore.online"
}