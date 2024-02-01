resource "github_enterprise_organization" "this" {
  name          = var.organization_name
  admin_logins  = var.admin_logins
  billing_email = var.billing_email
  enterprise_id = var.enterprise_id
}
