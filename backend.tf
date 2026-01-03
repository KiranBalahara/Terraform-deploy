terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "my-terraform-state-kiran"
    key            = "s3-github-actions/terraform.tfstate"
    region         = "us-west-2"

    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

