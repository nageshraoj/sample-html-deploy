terraform {
  required_version = "~> 1.0"
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 3.44"
    }
  }

#   backend "s3" {
#       bucket = "nagesh-071221"
#       key = "workspace/terraform.tfstate"
#       dynamodb_table = "cd-state"
#       region = "us-east-2"
#   }
}

provider "aws" {
  #  profile = "default"
  #  region = "us-east-2"
}