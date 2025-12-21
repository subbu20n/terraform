terraform {
    required_providers {
        aws  = {
            source ="hashicorp/aws" 
            version = "5.98.0"
        }
    }
}

provider "aws" {
    #configuration options 
    alias  = "dev" 
    profile  = "dev"
}

provider "aws" {
    #configuration options 
    alias = "prod"
    profile  = "prod"
} 
   