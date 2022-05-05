terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "smile-web-system"

    workspaces {
      name = "gh-actions-smile"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



# resource "aws_lambda_function" "hello_world" {
#   source = "terraform-aws-modules/lambda/aws"

#   function_name = "my-lambda-GO"
#   description   = "My awesome lambda function"
#   handler       = "index.lambda_handler"
#   runtime       = "python3.8"

#   source_path = "../src/lambda-function"

#   role = aws_iam_role.lambda_exec.arn
  

#   tags = {
#     Name = "my-lambda-GO"
#   }

# }

# resource "aws_iam_role" "lambda_exec" {
#   name = "serverless_lambda"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Action = "sts:AssumeRole"
#       Effect = "Allow"
#       Sid    = ""
#       Principal = {
#         Service = "lambda.amazonaws.com"
#       }
#       }
#     ]
#   })
# }

# resource "aws_iam_role_policy_attachment" "lambda_policy" {
#   role       = aws_iam_role.lambda_exec.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
# }


