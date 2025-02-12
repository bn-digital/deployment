resource "digitalocean_project" "my_project" {
  name        = var.project_name
  description = "${var.project_name} project"
  purpose     = "Web Application"
  environment = "Production"
}
