variable "sg-name" {
  type = string
  default = "roboshop_all"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound-from-port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "instance_name" {
  type = string
  default = "roboshop_all"
}