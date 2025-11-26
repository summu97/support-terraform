provider "azurerm" {
  features {}
}

locals {
  using_kv          = var.encryption_type == "AzureKeyVault"
  using_mhsm        = var.encryption_type == "ManagedHSM"
  using_key_uri     = var.encryption_type == "KeyUri"
  using_platform    = var.encryption_type == "PlatformManaged"
}

# Disk Encryption Set Configuration
resource "azurerm_disk_encryption_set" "this" {
  name                = var.des_name
  resource_group_name = var.resource_group_name
  location            = var.location

  # CONDITIONAL KEY SOURCE
  key_source = local.using_platform ? "Microsoft.Storage" : "Microsoft.KeyVault"

  # USER-ASSIGNED IDENTITY ALWAYS NEEDED EXCEPT PMK
  identity {
    type = local.using_platform ? "SystemAssigned" : "UserAssigned"
    identity_ids = local.using_platform ? null : var.user_assigned_identity_ids
  }

  # --------------------------
  # CUSTOMER MANAGED KEY (CMK)
  # --------------------------

  # Azure Key Vault Type
  key_vault_key_id = local.using_kv ? (
    "${var.keyvault_uri}/keys/${var.keyvault_key_name}/${var.keyvault_key_version}"
  ) : null

  # Managed HSM Type
  hsm_key_source = local.using_mhsm ? "Microsoft.KeyVault" : null

  hsm_key_id = local.using_mhsm ? (
    "${var.managed_hsm_uri}/keys/${var.mhsm_key_name}/${var.mhsm_key_version}"
  ) : null

  # Direct Key URI
  key_uri = local.using_key_uri ? var.key_uri : null

  # Auto Key Rotation (KV only)
  auto_key_rotation_enabled = local.using_kv ? var.auto_key_rotation : false

  tags = var.tags
}
