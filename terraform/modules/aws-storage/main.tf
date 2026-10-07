resource "aws_s3_bucket" "sweeter" {
  bucket = var.bucket_name

  tags = var.tags
}