variable public_key_path {
  description = "Path to the public key used for ssh access"
  type        = string
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
  type        = string
  default     = "~/.ssh/appuser"
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

variable app_deploy_enabled {
  description = "If this parameter is true, the app will be installed automatically"
  type        = bool
  default     = false
}

variable "db_internal_ip" {
  description = "Mongo DB IP address"
  type        = string
}
