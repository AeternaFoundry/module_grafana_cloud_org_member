output "cloud_org_members_id" {
  description = "Map of id values across all cloud_org_members, keyed the same as var.cloud_org_members except keys with no id are omitted"
  value       = { for k, v in grafana_cloud_org_member.cloud_org_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_org_members_org" {
  description = "Map of org values across all cloud_org_members, keyed the same as var.cloud_org_members except keys with no org are omitted"
  value       = { for k, v in grafana_cloud_org_member.cloud_org_members : k => v.org if v.org != null && length(v.org) > 0 }
}
output "cloud_org_members_receive_billing_emails" {
  description = "Map of receive_billing_emails values across all cloud_org_members, keyed the same as var.cloud_org_members except keys with no receive_billing_emails are omitted"
  value       = { for k, v in grafana_cloud_org_member.cloud_org_members : k => v.receive_billing_emails if v.receive_billing_emails != null }
}
output "cloud_org_members_role" {
  description = "Map of role values across all cloud_org_members, keyed the same as var.cloud_org_members except keys with no role are omitted"
  value       = { for k, v in grafana_cloud_org_member.cloud_org_members : k => v.role if v.role != null && length(v.role) > 0 }
}
output "cloud_org_members_user" {
  description = "Map of user values across all cloud_org_members, keyed the same as var.cloud_org_members except keys with no user are omitted"
  value       = { for k, v in grafana_cloud_org_member.cloud_org_members : k => v.user if v.user != null && length(v.user) > 0 }
}

