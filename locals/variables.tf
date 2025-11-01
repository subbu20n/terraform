variable "project" {
    default = "roboshop" 
}

variable "component" {
    default = "cart"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        project = "roboshop"
        Terraform = "true"
    }
}

/*variable "final_name" {
    default = "${var.project}-${var.environment}-${var.component}"
}*/ 