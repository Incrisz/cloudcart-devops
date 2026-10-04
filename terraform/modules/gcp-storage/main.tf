resource "google_storage_bucket" "this" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = var.force_destroy

  uniform_bucket_level_access = true

  labels = var.labels
}