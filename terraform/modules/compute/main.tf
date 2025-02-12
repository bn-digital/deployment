resource "digitalocean_droplet" "web" {
  image      = var.image
  name       = var.droplet_name
  region     = var.region
  size       = var.size
  tags       = ["production"]
  ssh_keys   = [digitalocean_ssh_key.default.fingerprint]
  monitoring = true
}

resource "digitalocean_ssh_key" "default" {
  name       = "${var.droplet_name}-key"
  public_key = file(var.public_key_path)
}