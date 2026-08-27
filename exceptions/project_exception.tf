/*
resource "google_org_policy_policy" "project_exception" {
  name   = "projects/${var.project_id}/policies/storage.publicAccessPrevention"
  parent = "projects/${var.project_id}"

  spec {
    reset = true
  }
}
*/
