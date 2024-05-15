variable "ssh_public_keys" {
  type = string
  validation {
    condition     = length(var.ssh_public_keys) > 0
    error_message = "ssh_public_keys is required"
  }
}
