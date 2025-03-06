output "public_ip" {
  value = digitalocean_droplet.web.ipv4_address
}

output "droplet_id" {
  value = digitalocean_droplet.web.id
}

output "droplet_urn" {
  value = digitalocean_droplet.web.urn
}