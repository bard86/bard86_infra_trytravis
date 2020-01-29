variable public_key_path {
  description = "Path to the public key used for ssh access"
  type        = string
}

variable zone {
  description = "Zone"
  type        = string
  default     = "europe-north1-a"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  type        = string
  default     = "reddit-db-base"
}
