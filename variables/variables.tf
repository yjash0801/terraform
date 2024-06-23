variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    #default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Jashwanth" #tags plays very important role in inventory management, filteration, and billing
        Project = "roboshop" #this tells the above instance is associated with project (i.e.) roboshop project
        Environment = "Dev" #Created for which environment Dev, Test, Non-PROD and PROD
        Component = "Web" #This contain web component not microservice (nginx or apache tomcat)
        Terraform = "true" #This is created using terraform not manually
    }
}

variable "sg-name" {
    type = string
    default = "roboshop_allow_all"
}

variable "sg-description" {
    type = string
    default = "Allow all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg-tags" {
    type = map
    default = {
        Name = "roboshop_allow_all"
        Instance = "Web Instance"
    }
}