resource "aws_instance" "linux" {
    ami = "ami-09c813fb71547fc4f" 
    instance_type = "t3.micro" 
    vpc_security_group_ids = ["sg-0ad4f1d9859b4f090"] 

    lifecycle {
          create_before_destroy = true # first create new one and delete old one ok 
    }

    tags = {
        Name = "linux-change"   #to recovered from manual created then we bring back to terraform process 
    }
}      