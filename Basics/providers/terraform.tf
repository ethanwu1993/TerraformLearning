terraform {
  required_version = "~> 0.15.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }

    http = {
      source = "hasicorp/http"
      version = "2.1.0"
    }


  }
}