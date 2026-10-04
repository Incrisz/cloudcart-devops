resource "random_id" "suffix" {
  byte_length = 4
}

module "aws_storage" {
  source = "../../modules/aws-storage"

  bucket_name = "cloudcart-aws-${random_id.suffix.hex}"

  tags = {
    Environment = "dev"
    Project     = "cloudcart"
  }
}

# module "gcp_storage" {
#   source = "../../modules/gcp-storage"

#   bucket_name   = "cloudcart-gcp-${random_id.suffix.hex}"
#   location      = var.gcp_region
#   force_destroy = true

#   labels = {
#     environment = "dev"
#     project     = "cloudcart"
#   }
# }