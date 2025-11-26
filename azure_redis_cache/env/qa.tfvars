# ===========================
# REDIS PRICING TIER OPTIONS
# ===========================
# - Basic
# - Standard
# - Premium   (Enables zone, clustering, VNet, persistence)
# ===========================

redis_name          = "qa-redis-cache"
subscription_id     = "QA_SUBSCRIPTION_ID"
resource_group_name = "qa-rg"
location            = "East US"

# Basic/Standard/Premium
pricing_tier = "Standard"

# Redis size
family   = "C"
capacity = 1

enable_non_ssl_port = false

# Premium only (ignored otherwise)
zones                        = null
shard_count                  = null
rdb_backup_enabled           = false
rdb_backup_frequency         = null
rdb_storage_connection_string = null
subnet_id                   = null

tags = {
  environment = "qa"
}
