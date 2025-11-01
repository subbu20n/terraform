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
    default = "vars-file-allow"
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
   #default = ["mongodb", "redis", "mysql", "rabbitmq"]  # here making it as map becoz here for-loop will iterate 
   /*default = {
      mongodb = "t3.micro" # in this for-loop works only map or set 
      redis = "t3.micro" 
      mysql = "t3.small"    # it consumes more storage so we using t3.small 
      rabbitmq = "t3.micro"
   }*/
   default = ["mongodb", "redis", "mysql", "rabbitmq"]  # this is for i dont want change i need to keep this for toset making just see result 
} 

variable "zone_id" {
    default = "Z06528725AJCPEPL0K7K"
}

variable "domain_name" {
    default = "subbuaws.site"
}
