##
## AWS
##

region  = "ap-northeast-1"
profile = "nerves-hub"

bucket_prefix = "nerveshub"

##
## Database
##

db_username = "nerveshub"
db_password = "123456"
#db_allocated_storage = 20
#db_instance_class = "db.t2.small"
#db_engine_version = "11.4"

##
## Logging and debugging
##

#rollbar_access_token_ca = "123456"
#log_retention = 90 # Log retention for staging is 1 day

##
## Applications
##

domain = "nerves-hub.org"

erl_cookie = "123456"

ca_db_name = "nerves_hub_ca"
#ca_ssl_folder = "ssl"
#ca_service_desired_count = 1
#ca_image = "nerveshub/nerves_hub_ca:latest"

web_db_name         = "nerves_hub_web"
web_secret_key_base = "123456"

# Email (SES)
web_smtp_username = "nerveshub"
web_smtp_password = "123456"

#whitelist = ["0.0.0.0/0"]

#www_service_desired_count = 1
#www_image = "nerveshub/nerves_hub_www:latest"
www_live_view_signing_salt = "123456"

#api_service_desired_count = 1
#api_image = "nerveshub/nerves_hub_api:latest"

#device_service_desired_count = 1
#device_image = "nerveshub/nerves_hub_www:latest"

#billing_service_desired_count = 1
#billing_image = "nerveshub/nerves_hub_billing:latest"
