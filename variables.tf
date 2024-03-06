# Harness Account Setup
variable "harness_platform_url" {
  type        = string
  description = "[Optional] Enter the Harness Platform URL.  Defaults to Harness SaaS URL"
  default     = null # If Not passed, then the ENV HARNESS_ENDPOINT will be used or the default value of "https://app.harness.io/gateway"
}

variable "harness_platform_account" {
  type        = string
  description = "[Required] Enter the Harness Platform Account Number"
  default     = null # If Not passed, then the ENV HARNESS_ACCOUNT_ID will be used
  sensitive   = true
}

variable "harness_platform_key" {
  type        = string
  description = "[Required] Enter the Harness Platform API Key for your account"
  default     = null # If Not passed, then the ENV HARNESS_PLATFORM_API_KEY will be used
  sensitive   = true
}

variable "organization_id" {
  type        = string
  description = "[Required] Provide an organization reference ID.  Must exist before execution"
}

variable "project_id" {
  type        = string
  description = "[Required] New project identifier"
}

variable "project_name" {
  type        = string
  description = "[Required] New project name"
}

variable "seal_id" {
  type        = string
  description = "[Required] JPMC SEAL"
}

variable "devx_project_name" {
  type        = string
  description = "[Required] JPMC DevX Project Name"
}

variable "project_code" {
  type        = string
  description = "[Optional] JPMC Project Code. Defaults to DevX Project Name if not provided."
}

variable "bitbucket_url" {
  type        = string
  description = "[Required] JPMC Project Code. Defaults to DevX Project Name if not provided."
}

variable "validation_repo" {
  type        = string
  description = "[Required] JPMC Project Code. Defaults to DevX Project Name if not provided."
}

variable "aws_artifactory_url" {
  type        = string
  description = "[Required] JPMC Project Code. Defaults to DevX Project Name if not provided."
}

variable "generic_artifactory_url" {
  type        = string
  description = "[Required] JPMC Project Code. Defaults to DevX Project Name if not provided."
}
