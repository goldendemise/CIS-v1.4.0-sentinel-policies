terraform {
  cloud {
    organization = "sean-env"

    workspaces {
      name = "cis-sentinel-resources"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

  provider "aws" {
    region = "us-west-2"
  }

  resource "aws_cloudtrail" "example" {
    name                          = "example"
    s3_bucket_name                = "stm-cloudtrail-sentinel"
    include_global_service_events = false
  }
  
  resource "aws_cloudtrail" "example-multi-region" {
    name                          = "example-multi-region"
    s3_bucket_name                = "stm-cloudtrail-sentinel"
    include_global_service_events = true
    is_multi_region_trail = true
  }
