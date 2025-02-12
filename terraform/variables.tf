# General

variable "do_token" {
  type        = string
  sensitive   = true
  description = "DigitalOcean API token"
}

variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "region" {
  type        = string
  description = "The region to create the droplet in"
  default     = "nyc3"
}

# Compute

variable "image" {
  type        = string
  description = "The image to use for the droplet"
  default     = "ubuntu-24-10-x64"
}

variable "size" {
  type        = string
  description = "The size of the droplet"
  default     = "s-2vcpu-4gb"
}

variable "public_key_path" {
  type        = string
  description = "Path to the public key file"
  default     = "~/.ssh/id_ed25519.pub"
}

# Storage

variable "enable_spaces" {
  type        = bool
  description = "Enable Spaces bucket"
  default     = false
}