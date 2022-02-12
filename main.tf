provider "aws" {
  region     = "us-east-2"
  access_key = "AKIATIB5K2VXSX3F3TO5"
  secret_key = "U1PWDcCZKjcOTgVsu9kprD1jqmKsx9psuzxUWygn"
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }



