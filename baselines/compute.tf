resource "google_org_policy_policy" "disable_serial_port" {
  name   = "organizations/${var.org_id}/policies/compute.disableSerialPortAccess"
  parent = "organizations/${var.org_id}"

  spec {
    rules {
      enforce = true
    }
  }
}
resource "google_org_policy_policy" "require_os_login" {
  name   = "organizations/${var.org_id}/policies/compute.requireOsLogin"
  parent = "organizations/${var.org_id}"

  spec {
    rules {
      enforce = true
    }
  }
}
