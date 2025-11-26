output "disk_encryption_set_id" {
  value = azurerm_disk_encryption_set.this.id
}

output "disk_encryption_set_key_url" {
  value = azurerm_disk_encryption_set.this.key_vault_key_id
}
