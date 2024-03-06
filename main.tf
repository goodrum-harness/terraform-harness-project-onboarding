
data "harness_platform_organization" "selected" {
  identifier = var.organization_id
}

resource "harness_platform_project" "selected" {
  identifier  = var.project_id
  name        = var.project_name
  org_id      = data.harness_platform_organization.selected.id
  description = ""

  tags = [
    "seal:${var.seal_id}",
    "devx:${var.devx_project_name}"
  ]
}
