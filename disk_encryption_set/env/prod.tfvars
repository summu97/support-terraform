# Example: Production using Azure Key Vault CMK

des_name            = "prod-disk-encryption-set"
subscription_id     = "PROD_SUBSCRIPTION_ID"
resource_group_name = "prod-rg"
location            = "Central India"

# Using Azure Key Vault CMK
encryption_type = "AzureKeyVault"

keyvault_uri         = "https://prod-vault.vault.azure.net"
keyvault_key_name    = "prod-encryption-key"
keyvault_key_version = "ab12345cd67890"

auto_key_rotation = true

user_assigned_identity_ids = [
  "/subscriptions/.../resourceGroups/prod-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/des-identity"
]

# Managed HSM (ignored)
managed_hsm_uri  = null
mhsm_key_name    = null
mhsm_key_version = null

# Key URI (ignored)
key_uri = null

tags = {
  environment = "prod"
  owner       = "cloudteam"
}
