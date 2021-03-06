provider "aws" {
  region = var.aws_region
  assume_role {
      role_arn = var.role_arn
  }
  version = ">= 2.27.0"
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}

  # The latest version of Terragrunt (v0.19.0 and above) requires Terraform 0.12.0 or above.
  required_version = ">= 0.12.0"
}


