terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
   backend "s3" { 
    bucket = "daws84s-remote-state-sriharibandi"   
    key    = "provisioners-state"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true  
  }
}

provider "aws" {
  # Configuration options
}  