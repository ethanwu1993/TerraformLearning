module "my_s3_module_east" {
  source      = "../my-s3-module"
  bucket_name = local.bucket_name_east
  acl         = "private"
}
