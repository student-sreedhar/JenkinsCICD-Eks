terraform {
  backend "s3" {
    bucket         = "devsecops-ekssree"
    region         = "ap-southeast-2"
    key            = "JenkinsCICD-Eks/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "tf-lock-file"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}