variable "platform-services_namespace" {
  type        = string
  description = "vault namespace to work in"
  default     = "platform-services"
}

variable "platform-services_approle_path" {
  type        = string
  description = "vault path for approle authentication"
  default     = "auth/approle/login"
}

# Terraform Cloud vars cannot have a dash, must use underscore
variable "platform_services_vault_role_id" {
  type        = string
  description = "vault approle role id"
}

# Terraform Cloud vars cannot have a dash, must use underscore
variable "platform_services_vault_secret_id" {
  type        = string
  description = "vault approle secret id"
}
