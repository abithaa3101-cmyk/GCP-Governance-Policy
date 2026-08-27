
resource "google_org_policy_policy" "true_harmony_pap_exception" {
  name   = "projects/true-harmony-503305-g5/policies/storage.publicAccessPrevention"
  parent = "projects/true-harmony-503305-g5"

  spec {
    reset = true
  }
}

