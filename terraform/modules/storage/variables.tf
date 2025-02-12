variable "storage_name" {
  type        = string
  description = "The name of the project"
}

variable "enable_spaces" {
  type        = bool
  description = "Enable Spaces bucket"
  default     = false
}

variable "region" {
  type        = string
  description = "DO region"
  default     = "nyc3"
}