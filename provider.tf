provider "vault" {
  alias = "platform-services"
  # Provision resources into this Vault namespace
  namespace = var.platform-services_namespace

  # Vault AppRole authentication
  auth_login {
    path      = var.platform-services_approle_path
    # Authenticate against this Vault namespace
    namespace = var.platform-services_namespace

    parameters = {
      role_id   = var.platform_services_vault_role_id
      secret_id = var.platform_services_vault_secret_id
    }
  }
}
