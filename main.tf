terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.55.0"
    }
  }
  backend "s3" {
    bucket         = "terraforms3backendbucket2023"
    key            = "terraform/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}

resource "aws_s3_bucket" "s3" {
  bucket = "s3-terraform-github-actions-bucket"
}
