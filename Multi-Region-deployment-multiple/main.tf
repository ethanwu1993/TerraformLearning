
module "us-east-1" {
  providers = {
    aws = aws.east
  }
  source = "./us-east-module"
}

module "us-west-2" {
  providers = {
    aws = aws.west
  }
  source = "./us-west-module"
}