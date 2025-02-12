output "droplet_ip" {
  value       = module.droplet.public_ip
  description = "Public IP of the droplet"
}