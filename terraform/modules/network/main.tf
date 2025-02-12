resource "digitalocean_reserved_ip" "web_ip" {
  droplet_id = var.droplet_id
  region     = var.region
}
