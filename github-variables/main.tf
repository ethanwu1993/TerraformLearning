provider "http" {
}

data "http" "github_config" {
  url = "https://raw.githubusercontent.com/ethanwu1993/Terraform-config-test/main/config-us-east.json"  # Replace with the actual URL of your JSON file
}

locals {
  github_config = jsondecode(data.http.github_config.body)
}

# provider "github" {
#   token = "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"
# }

module "my_s3_module_east" {
  region = local.github_config.region
  source      = "./s3-modules"
  bucket_name = local.github_config.bucket_name
  acl         = "private"
}


