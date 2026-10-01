resource "aws_s3_bucket" "cloudcart" {
  bucket = "cloudcart-aws-${random_id.suffix.hex}"

  tags = {
    Name        = "cloudcart"
    Environment = "dev"
    Project     = "cloudcart"
  }
}

resource "google_storage_bucket" "cloudcart" {
  name          = "cloudcart-gcp-${random_id.suffix.hex}"
  location      = var.gcp_region
  force_destroy = true

  uniform_bucket_level_access = true

  labels = {
    environment = "dev"
    project     = "cloudcart"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}