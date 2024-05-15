# Install proxmox provider
terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

# Variables
variable "pm_api_url" {
  type = string
  validation {
    condition     = length(var.pm_api_url) > 0
    error_message = "pm_api_url is required"
  }
}

variable "pm_api_token_id" {
  type      = string
  sensitive = true
  validation {
    condition     = length(var.pm_api_token_id) > 0
    error_message = "pm_api_token_id is required"
  }
}

variable "pm_api_token_secret" {
  type      = string
  sensitive = true
  validation {
    condition     = length(var.pm_api_token_secret) > 0
    error_message = "pm_api_token_secret is required"
  }
}

# Pass variables to provider
provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}
