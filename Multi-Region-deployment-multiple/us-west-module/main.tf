module "my_s3_module_west" {
  source      = "../my-s3-module"
  bucket_name = local.bucket_name_west
  acl         = "private"
}
