provider "google" {
  project = "bubbly-shield-503211-s0"
}

module "baselines" {
  source = "./baselines"
  org_id = var.org_id
}

module "exceptions" {
  source = "./exceptions"
  org_id = var.org_id
  project_id = var.project_id
}
