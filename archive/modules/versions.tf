terraform {
  required_providers {
    awscc = {
      source = "hashicorp/awscc"
      version = "1.32.0"
    }
  }
}

provider "awscc" {
  region = "us-east-1"
  # Configuration options
}