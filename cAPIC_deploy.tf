terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    aci = {
      source  = "CiscoDevNet/aci"
    }
  }
}

#
# AWS Providers
#

provider "aws" {
  region     = var.region
  alias      = "capicTenant"
  access_key = var.awsCapicTenantAccessKey
  secret_key = var.awsCapicTenantSecretKey
}

resource "aws_cloudformation_stack" "capic" {
  name         = "capic"
  provider     = aws.capicTenant
  on_failure   = "DELETE"
  capabilities = ["CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
  parameters = {
    pFabricName       = "ACI-Cloud-Fabric"
    pInfraVPCPool     = "10.10.0.0/24"
    pAvailabilityZone = var.capicAvailabilityzone
    pInstanceType     = "m5.2xlarge"
    pPassword         = var.capicAdminPassword
    pConfirmPassword  = var.capicAdminPassword
    pKeyName          = var.sshKeyName
    pExtNw            = "0.0.0.0/0"
  }
  template_url = var.capicTemplate

}


