provider "aws" {
  region     = "us-east-2"
  access_key = "AKIATIB5K2VXSX3F3TO5"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket  = "delete-1"
    key     = "mykey/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

