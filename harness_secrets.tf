
# Create and Manage Harness Secrets
#

resource "harness_platform_secret_text" "sonar_access_token" {
  identifier  = "sonar_access_token"
  name        = "sonar_access_token"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "Sonar token will be used during sonar scan step for reading the sonar scan results. This secret is required if you are using 'Sonar Integration' template version 2.2 and above."
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "bitbucket_fid" {
  identifier  = "bitbucket_fid"
  name        = "bitbucket_fid"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "FID with access to clone application code from Bitbucket"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "bitbucket_access_token" {
  identifier  = "bitbucket_access_token"
  name        = "bitbucket_access_token"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "Bitbucket FIDs Access Token"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "aws_artifactory_fid" {
  identifier  = "aws_artifactory_fid"
  name        = "aws_artifactory_fid"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "FID with write permission to AWS Artifactory"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "aws_artifactory_api_key" {
  identifier  = "aws_artifactory_api_key"
  name        = "aws_artifactory_api_key"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "AWS Artifactory FIDs API Key"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "generic_artifactory_fid" {
  identifier  = "generic_artifactory_fid"
  name        = "generic_artifactory_fid"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "FID with write permission to Generic Artifactory"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}

resource "harness_platform_secret_text" "generic_artifactory_api_key" {
  identifier  = "generic_artifactory_api_key"
  name        = "generic_artifactory_api_key"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = "Generic Artifactory FIDs API Key"
  tags        = []

  secret_manager_identifier = "harnessSecretManager"
  value_type                = "Inline"
  value                     = "changeme"
}
