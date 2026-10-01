output "aws_bucket_name" {
  value = aws_s3_bucket.cloudcart.bucket
}

output "gcp_bucket_name" {
  value = google_storage_bucket.cloudcart.name
}