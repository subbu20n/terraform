terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" 
            version = "5.98.0"
        }
    }
    backend "s3" {
        bucket = "90-secure-state-tests" 
        key    = "secure" 
        region = "us-east-1" 
        encrypt = true 
        use_lockfile = true 
    }
}
provider "aws" {
    #configuration options 
}