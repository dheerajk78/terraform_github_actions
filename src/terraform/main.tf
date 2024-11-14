terraform {
  backend "s3" {
    bucket = var.bucket
    key = var.state_key
    region = var.primary_region
  }
}
