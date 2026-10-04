terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

    google = {
      source = "hashicorp/google"
    }

    random = {
      source = "hashicorp/random"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}