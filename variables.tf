variable "cloud_org_members" {
  description = <<EOT
Map of cloud_org_members, attributes below
Required:
    - org
    - role
    - user
Optional:
    - receive_billing_emails
EOT

  type = map(object({
    org                    = string
    role                   = string
    user                   = string
    receive_billing_emails = optional(bool)
  }))
}

