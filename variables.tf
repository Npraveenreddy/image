resource "aws_s3_bucket_object" "object" {
  bucket = "terraform-teknobucket1-state"
  key    = "Dockerfile"
  source = "C:\\Users\\pnarayana\\Documents\\Dockerfile.txt"
}
