terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "github-pipe"
    key    = "k8s/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
