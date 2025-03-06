module "project" {
  source       = "./modules/project"
  project_name = var.project_name
  resources    = concat(
    [module.droplet.droplet_urn, module.network.network_urn],
    var.enable_spaces ? [module.storage.storage_id] : []
  )
}

module "droplet" {
  source       = "./modules/compute"
  droplet_name = var.project_name
  region       = var.region
  size         = var.size
  image        = var.image
}

module "network" {
  source     = "./modules/network"
  droplet_id = module.droplet.droplet_id
  region     = var.region
}

module "storage" {
  source        = "./modules/storage"
  enable_spaces = var.enable_spaces
  region        = var.region
  storage_name  = var.project_name
}
