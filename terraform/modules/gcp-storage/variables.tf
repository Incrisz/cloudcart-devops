variable "bucket_name" {
  description = "Name of the GCP storage bucket"
  type        = string
}

variable "location" {
  description = "GCP bucket location"
  type        = string
}

variable "force_destroy" {
  description = "Allow deleting bucket contents during destroy"
  type        = bool
  default     = false
}

variable "labels" {
  description = "Labels for the bucket"
  type        = map(string)
  default     = {}
}