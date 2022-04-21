terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.0"
    }
  }

  provider "aws" {  
  region  = "us-east-1"
}

  required_version = ">=0.14.9"

  backend "s3" {
       bucket = "[Remote_State_S3_Bucket_Name]"
       key    = "[Remote_State_S3_Bucket_Key]"
       region = "us-east-1"
   }

}



resource "aws_s3_bucket" "s3Bucket" {
     bucket = "BUCKET_TEST_TERRAFORM"
     acl       = "public-read"

     policy  = <<EOF
{
     "id" : "MakePublic",
   "version" : "2012-10-17",
   "statement" : [
      {
         "action" : [
             "s3:GetObject"
          ],
         "effect" : "Allow",
         "resource" : "arn:aws:s3:::BUCKET_TEST_TERRAFORM/*",
         "principal" : "*"
      }
    ]
  }
EOF

   website {
       index_document = "index.html"
   }
}