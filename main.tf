terraform {
  backend "remote" {
    organization = "your-organization"
    workspaces {
      prefix = "nerves-hub-"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = var.profile
  region  = var.region
}

data "aws_caller_identity" "current" {}
