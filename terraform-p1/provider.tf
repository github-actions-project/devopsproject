terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
  backend "s3" {
    bucket = "terraform-s3-bucketb"
    key    = "dev1/terraform.tfstate" # object being uploaded i.e terraform.tfstate
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
