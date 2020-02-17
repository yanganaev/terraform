#
# MAINTAINER Vitaliy Natarov "vitaliy.natarov@yahoo.com"
#

terraform {
    required_version = "~> 0.12.12"

    required_providers {
        aws = "~> 2.49"
    }
}

provider "aws" {
    region                  = "us-east-1"
    profile                 = "default"
    shared_credentials_file = pathexpand("~/.aws/credentials")
}

module "shield" {
    source                          = "../../modules/shield"

    region                          = "us-east-1"

    enable_shield_protection        = true
    shield_protection_name          = "my-first-shield-protection"
    shield_protection_resource_arn  = ""

}
