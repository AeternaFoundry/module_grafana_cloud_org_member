resource "grafana_cloud_org_member" "cloud_org_members" {
  for_each = var.cloud_org_members

  org                    = each.value.org
  role                   = each.value.role
  user                   = each.value.user
  receive_billing_emails = each.value.receive_billing_emails
}

