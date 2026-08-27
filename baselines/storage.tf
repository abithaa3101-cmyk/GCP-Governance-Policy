resource "google_org_policy_policy" "public_access_prevention" {
  name   = "organizations/${var.org_id}/policies/storage.publicAccessPrevention"
  parent = "organizations/${var.org_id}"

  spec {
    rules {
      enforce = true
    }
  }
}

