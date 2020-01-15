variable project {
  description = "Project ID"
  type        = string
}

variable region {
  description = "Region"
  type        = string
  default     = "europe-north1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  type        = string
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
  type        = string
}

variable zone {
  description = "Zone"
  type        = string
  default     = "europe-north1-a"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  type        = string
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  type        = string
  default     = "reddit-db-base"
}

variable ip_source_ranges {
  description = "IP source range for firewall rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
