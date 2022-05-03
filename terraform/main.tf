terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"

}

provider "aws" {  
  profile = "default"
  region  = "us-east-1"
}



resource "aws_s3_bucket" "my_protected_bucket" {
     bucket = "BUCKET_TEST_TERRAFORM"
}