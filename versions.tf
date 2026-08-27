terraform {
  backend "gcs" {
    bucket = "gcp-governance-tfstate-662481597374"
    prefix = "org-policies"
  }

  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}
