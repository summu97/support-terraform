# ===========================
# CDN PRICING TIER OPTIONS
# ===========================
# Available CDN SKU Options:
# - Standard_Verizon
# - Premium_Verizon
# - Standard_Akamai
# - Standard_Microsoft   (Recommended for most use cases)
# - Premium_ChinaCdn
# ===========================

cdn_profile_name     = "prod-cdn-profile"
subscription_id      = "YOUR_PROD_SUBSCRIPTION_ID"
resource_group_name  = "prod-rg"
location             = "East US"

# Select the pricing tier from the options above
pricing_tier         = "Standard_Microsoft"

tags = {
  environment = "prod"
  department  = "IT"
}
