terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
      backend "s3" {
    bucket = "daws84s-remote-state-sriharibandi"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "terrdaws84s-remote-state-sriharibandi"
  }
}

provider "aws" {
  # Configuration options
} 