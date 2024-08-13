terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-ews-aniket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Aniket"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"  # Ensure this matches your desired region
}
