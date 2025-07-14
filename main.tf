terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access-key
  secret_key = var.secret-key
}