terraform {
  backend "gcs" {
    bucket = "otus-devops-dbarsukov"
    prefix = "terraform/state"
  }
}
