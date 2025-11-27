# qa.tfvars - example values for QA
key_vault_key_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-kv-qa/providers/Microsoft.KeyVault/vaults/qa-kv/keys/qa-key"
key_vault_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-kv-qa/providers/Microsoft.KeyVault/vaults/qa-kv"
location               = "eastus2"
name                   = "des-qa-001"
resource_group_name    = "rg-des-qa"
auto_key_rotation_enabled = false
enable_telemetry          = true
encryption_type           = "EncryptionAtRestWithCustomerKey"
federated_client_id      = null
managed_hsm_key_id       = null
lock                     = null

tags = {
  environment = "qa"
  project     = "disk-encryption"
}
