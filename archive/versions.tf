terraform {
  required_providers {
    awscc = {
      source = "hashicorp/awscc"
      version = "1.32.0"
    }
  }
}

provider "awscc" {
  region = var.aws_region
  # Configuration options
}