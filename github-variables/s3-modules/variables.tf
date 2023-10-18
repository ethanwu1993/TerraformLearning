variable "bucket_name" {
  description = "The name of the S3 bucket."
}

variable "acl" {
  description = "The access control list for the bucket."
  default     = "private"
}

variable "region" {
  
}