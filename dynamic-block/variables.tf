variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9" 
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

variable "sg_description" {
    default = "allowing all ports from all ip"
}

variable "sg_name" { 
    default = "allow"
}

variable "sg-description" {
    default = "allowing all ports from all ip"
}

variable "from_port" {
    default = "0"
}

variable "to_port" {
    default = "0"
}

variable "cidr-blocks" {
    default = ["0.0.0.0/0"]
} 

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "egress_ports" {
    default = [
        {
            from_port = "22" 
            to_port = "22"
        },
        {
            from_port = "8080"
            to_port   = "8080"
        },
        {
            from_port = "443" 
            to_port  = "443"
        }
    ]
}

variable "ingress_ports" {
    # type = list(map)
    default = [
        {
            from_port = "22"  
            to_port = "22"
        }, 
        {
            from_port = "8080"
            to_port   = "8080"
        },
        {
            from_port = "443" 
            to_port  = "443"
        }
    ]
} 

 