
# Create and Manage Harness Variables
#
resource "harness_platform_variables" "seal_id" {
  identifier  = "seal_id"
  name        = "seal_id"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  type        = "String"
  description = "Your project seal id. Ex: 111282"
  spec {
    value_type  = "FIXED"
    fixed_value = var.seal_id
  }
}

resource "harness_platform_variables" "devx_project_name" {
  identifier  = "devx_project_name"
  name        = "devx_project_name"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  type        = "String"
  description = "Your project devx id. Ex: 111282"
  spec {
    value_type  = "FIXED"
    fixed_value = var.devx_project_name
  }
}

resource "harness_platform_variables" "project_code" {
  identifier  = "project_code"
  name        = "project_code"
  org_id      = data.harness_platform_organization.selected.id
  project_id  = harness_platform_project.selected.id
  type        = "String"
  description = "Your Bitbucket Project Key in lowercase. Ex: <UPDATE-DESCRIPTION>"
  spec {
    value_type  = "FIXED"
    fixed_value = var.project_code != null ? var.project_code : var.devx_project_name
  }
}
