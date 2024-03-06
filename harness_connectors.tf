
# Create and Manage Harness Connectors
#

resource "harness_platform_connector_bitbucket" "bitbucket_repo" {
  depends_on  = [harness_platform_secret_text.bitbucket_fid, harness_platform_secret_text.bitbucket_access_token]
  identifier  = "bitbucket_repo"
  name        = "bitbucket_repo"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = ""
  tags        = []

  url                = "${var.bitbucket_url}/${var.project_code}"
  connection_type    = "Account"
  validation_repo    = var.validation_repo
  delegate_selectors = ["centralized-harness-ci-delegate"]
  credentials {
    http {
      username_ref = harness_platform_secret_text.bitbucket_fid.id
      password_ref = harness_platform_secret_text.bitbucket_access_token.id
    }
  }

  api_authentication {
    username_ref = harness_platform_secret_text.bitbucket_fid.id
    token_ref    = harness_platform_secret_text.bitbucket_access_token.id
  }
}

resource "harness_platform_connector_docker" "aws_artifactory_repo" {
  depends_on  = [harness_platform_secret_text.aws_artifactory_fid, harness_platform_secret_text.aws_artifactory_api_key]
  identifier  = "aws_artifactory_repo"
  name        = "aws_artifactory_repo"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = ""
  tags        = []

  type               = "DockerHub"
  url                = var.aws_artifactory_url
  delegate_selectors = ["centralized-harness-ci-delegate"]
  credentials {
    username_ref = harness_platform_secret_text.aws_artifactory_fid.id
    password_ref = harness_platform_secret_text.aws_artifactory_api_key.id
  }
}

resource "harness_platform_connector_artifactory" "generic_artifactory_repo" {
  depends_on  = [harness_platform_secret_text.generic_artifactory_fid, harness_platform_secret_text.generic_artifactory_api_key]
  identifier  = "generic_artifactory_repo"
  name        = "generic_artifactory_repo"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  description = ""
  tags        = []

  url                = var.generic_artifactory_url
  delegate_selectors = ["centralized-harness-ci-delegate"]
  credentials {
    username_ref = harness_platform_secret_text.generic_artifactory_fid.id
    password_ref = harness_platform_secret_text.generic_artifactory_api_key.id
  }
}
