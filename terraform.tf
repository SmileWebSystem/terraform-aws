terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
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


# resource "random_pet" "sg" {}
