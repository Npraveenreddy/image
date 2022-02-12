provider "aws" {
  region     = "us-east-2"
  access_key = "AKIATIB5K2VXSX3F3TO5"
  secret_key = "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"
}
#1 -this will create a S3 bucket in AWS
resource "aws_s3_bucket" "terraform_state_s3" {
  #make sure you give unique bucket name
  bucket = "terraform-teknobucket1-state" 
  force_destroy = true
# Enable versioning to see full revision history of our state files
  versioning {
         enabled = true
        }

