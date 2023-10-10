# Configure the AWS Provider
module "my_s3_module_east" {
  region = "us-east-1"
  source      = "./my-s3-module"
  bucket_name = local.bucket_name_east
  acl         = "private"
}


module "my_s3_module_west" {
  region = "us-west-2"
  source      = "./my-s3-module"
  bucket_name = local.bucket_name_west
  acl         = "private"
}


data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions = ["s3:GetObject", "s3:ListBucket"]
    resources = ["arn:aws:s3:::${local.bucket_name_west}/*",
      "arn:aws:s3:::${local.bucket_name_east}/*"
    ]
  }
}

resource "aws_iam_policy" "s3_access_policy" {
  name        = "s3-access-policy"
  description = "Policy for S3 access"

  policy = data.aws_iam_policy_document.s3_policy.json
}
