variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    description = "AMI id of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Hello subbu"
    }
}

variable "sg_name" {
    type = string 
    default = "allow-all"
}

variable "sg_description" {
    default = "allowing all ports from internet"
}

variable "from_port" {
    type = number 
    default = "0"
}

variable "to_port" {
    default = "0"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map(string)
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "dev"
}

variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
    default = "Z06528725AJCPEPL0K7K"
}

variable "domain_name" {
    default = "subbuaws.site"
}
