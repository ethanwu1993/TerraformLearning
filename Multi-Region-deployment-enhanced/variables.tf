variable "east" {
  description = "name for us-east-1"
  default     = "us-east-1"
}

variable "west" {
  description = "name for us-east-1"
  default     = "us-west-2"
}


variable "us-region" {
  type = map(string)
  default = {
    "us-east-1" = "ethanwu-us-east-1-bucket"
    "us-west-2" = "ethanwu-us-west-2-bucket"
  }
  
}