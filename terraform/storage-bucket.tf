provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.3.0"

  # Имя поменяйте на другое
  name          = "otus-devops-dbarsukov"
  force_destroy = true
  location      = var.region
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
