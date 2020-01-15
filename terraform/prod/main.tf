terraform {
  required_version = "0.12.19"
}

provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

provider "null" {
  version = "~> 2.1"
}

module "app" {
  source             = "../modules/app"
  public_key_path    = var.public_key_path
  private_key_path   = var.private_key_path
  zone               = var.zone
  app_disk_image     = var.app_disk_image
  db_internal_ip     = module.db.db_internal_ip
  app_deploy_enabled = var.app_deploy_enabled
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = var.ip_source_ranges
}
