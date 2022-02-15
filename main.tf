terraform {
  backend "s3" {
    bucket  = "delete-1"
    key     = "mykey/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

