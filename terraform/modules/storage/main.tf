resource "digitalocean_spaces_bucket" "bucket" {
  count  = var.enable_spaces ? 1 : 0
  name   = var.storage_name
  region = var.region
}