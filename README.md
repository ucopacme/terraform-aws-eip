# terraform-aws-eip

Terraform AWS EIP Module


-->

Terraform module to provision AWS [`EIP`]



## Introduction

The module will create:

* EIP




## Usage 


1. Create main.tf config file, copy/past the following configuration.


```

#


module "eip" {
  source = "git::https://git@github.com/ucopacme/terraform-aws-eip"
  tags = {
    "Name"             = "eip-test"
    "ucop:application" = local.application
    "ucop:createdBy"   = local.createdBy
    "ucop:environment" = local.environment
    "ucop:group"       = local.group
    "ucop:source"      = local.source
  }


}

locals {
  application = "test"
  createdBy   = "terraform"
  environment = "dev"
  group       = "chs"
  source      = "https://github.com/ucopacme/ucop-terraform-deployments/terraform/chs-dev"
}

#

2. Create output.tf config file, copy/past the following configuration.


output "id" {
  description = "Contains the EIP allocation ID"
  value       = module.eip.id
}

output "public_ip" {
  description = "Contains the public IP address"
  value       = module.eip.public_ip
}

output "public_dns" {
  description = "Public DNS associated with the Elastic IP address"
  value       = module.eip.public_dns
}

