variable "sshKeyName" {
  description = "ssh key name "
  type = string
  default = "aws-keypair"
  }
variable "capicAdminPassword" {
  description = "password-apic"
  type = string
  default = "password"
  }
variable "capicAvailabilityzone" {
  description = "availabilityzone"
  type = string
  default = "us-west-1a"
  }
  variable "capicTemplate" {
  description = "template 5.1(2e)"
  type = string
  default = "https://s3.amazonaws.com/awsmp-fulfillment-cf-templates-prod/6cad9a0e-821a-4f03-881e-fb1f66f4dc1f.ca8189ef-b61f-4dba-32bd-d45ef5586b43.template"
  }
  variable "awsCapicTenantAccessKey" {
  description = "access-key"
  type = string
  default = "your-access-key"
  }
variable "awsCapicTenantSecretKey" {
  description = "secret-key"
  type = string
  default = "your-secret-key"
  }
variable "region" {
  type = string
  default = "us-west-1"
}