# prod.tfvars - example values for Production
# Replace the example IDs with your real production Key Vault / Managed HSM IDs
key_vault_key_id      = "/subscriptions/<SUB>/resourceGroups/rg-kv-prod/providers/Microsoft.KeyVault/vaults/prod-kv/keys/prod-key"
key_vault_resource_id = "/subscriptions/<SUB>/resourceGroups/rg-kv-prod/providers/Microsoft.KeyVault/vaults/prod-kv"
location               = "centralus"
name                   = "des-prod-001"
resource_group_name    = "rg-des-prod"
auto_key_rotation_enabled = true
enable_telemetry          = true
encryption_type           = "EncryptionAtRestWithCustomerKey"
# federated_client_id may be a managed identity or service principal object id that needs access to the key
federated_client_id      = null
managed_hsm_key_id       = null
lock = {
  kind = "CanNotDelete"
  name = "lock-des-prod-001"
}

tags = {
  environment = "prod"
  project     = "disk-encryption"
  owner       = "platform-team"
}
