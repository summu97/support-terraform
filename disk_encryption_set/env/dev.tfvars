# dev.tfvars - example values for development
key_vault_key_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-kv-dev/providers/Microsoft.KeyVault/vaults/my-kv/keys/mykey"
key_vault_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-kv-dev/providers/Microsoft.KeyVault/vaults/my-kv"
location               = "eastus"
name                   = "des-dev-001"
resource_group_name    = "rg-des-dev"
auto_key_rotation_enabled = false
enable_telemetry          = true
encryption_type           = "EncryptionAtRestWithCustomerKey"
federated_client_id      = null
managed_hsm_key_id       = null
lock                     = null

# tags can be provided as a map
tags = {
  environment = "dev"
  project     = "disk-encryption"
}
