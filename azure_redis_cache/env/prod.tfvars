# ===========================
# REDIS PRICING TIER OPTIONS
# ===========================
# - Basic
# - Standard
# - Premium   (Recommended for production)
# ===========================

redis_name          = "prod-redis-cache"
subscription_id     = "PROD_SUBSCRIPTION_ID"
resource_group_name = "prod-rg"
location            = "Central India"

# For production
pricing_tier = "Premium"

family   = "P"
capacity = 1

enable_non_ssl_port = false

# PREMIUM-ONLY configurations
zones       = ["1", "2", "3"]       # High availability
shard_count = 3                     # Redis Cluster enabled

rdb_backup_enabled            = true
rdb_backup_frequency          = 60
rdb_storage_connection_string = "DefaultEndpointsProtocol=https;AccountName=prodsa;AccountKey=XXXX"

subnet_id = "/subscriptions/.../subnets/redis-subnet"

tags = {
  environment = "prod"
}
