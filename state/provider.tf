terraform {
    required_providers {
       aws = {
          source = "hashicorp/aws" 
          version = "5.98.0"
       }
    }
    backend "s3" {
        bucket = "90-remote-dev" 
        key    = "remote-state-dev" 
        region = "us-east-1" 
        dynamodb_table = "90-remote-state"
    }
}     

provider "aws" {
    # configuration options 
    region = "us-east-1"
}