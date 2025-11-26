variable "subscription_id" {
  description = "Azure subscription"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "des_name" {
  description = "Disk Encryption Set name"
  type        = string
}

# =============================
# ENCRYPTION TYPE OPTIONS
# =============================
# - PlatformManaged   → Uses Microsoft-managed encryption
# - AzureKeyVault     → Uses Azure Key Vault (CMK)
# - ManagedHSM        → Uses Managed HSM (CMK)
# - KeyUri            → Uses a custom URI key (manual)
# =============================
variable "encryption_type" {
  description = "Type of encryption to configure"
  type        = string
}

# ---------------------------
# USER ASSIGNED IDENTITY
# ---------------------------
variable "user_assigned_identity_ids" {
  type        = list(string)
  description = "User assigned managed identity IDs (required for CMK types)"
  default     = []
}

# ---------------------------
# Azure Key Vault Options
# ---------------------------
variable "keyvault_uri" {
  type        = string
  default     = null
}

variable "keyvault_key_name" {
  type        = string
  default     = null
}

variable "keyvault_key_version" {
  type        = string
  default     = null
}

variable "auto_key_rotation" {
  type    = bool
  default = false
}

# ---------------------------
# Managed HSM Options
# ---------------------------
variable "managed_hsm_uri" {
  type    = string
  default = null
}

variable "mhsm_key_name" {
  type    = string
  default = null
}

variable "mhsm_key_version" {
  type    = string
  default = null
}

# ---------------------------
# Direct Key URI Options
# ---------------------------
variable "key_uri" {
  type    = string
  default = null
}

variable "tags" {
  type        = map(string)
  default     = {}
}
