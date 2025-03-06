variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "resources" {
  type        = list(string)
  description = "The resources that will be created in the project"
}
