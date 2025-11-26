# ==========================================
# ENCRYPTION TYPE OPTIONS
# ==========================================
# - PlatformManaged
# - AzureKeyVault
# - ManagedHSM
# - KeyUri
# ==========================================

des_name            = "dev-disk-encryption-set"
subscription_id     = "DEV_SUBSCRIPTION_ID"
resource_group_name = "dev-rg"
location            = "East US"

# Basic: Platform managed
encryption_type = "PlatformManaged"

# Azure Key Vault
keyvault_uri          = null
keyvault_key_name     = null
keyvault_key_version  = null
auto_key_rotation     = false

# Managed HSM
managed_hsm_uri  = null
mhsm_key_name    = null
mhsm_key_version = null

# Key URI
key_uri = null

# Identity not needed for PMK
user_assigned_identity_ids = []

tags = {
  environment = "dev"
}
