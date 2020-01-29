variable source_ranges {
  description = "Allowed IP addresses"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
