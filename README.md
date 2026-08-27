# GCP Governance Automation with Terraform

A Governance-as-Code implementation for centrally managing and enforcing
GCP Organization Policies using Terraform, GitHub, GitHub Actions, and GCS.

## Architecture

GitHub → GitHub Actions → Terraform → GCS State → GCP Organization Policies

## Implemented Policies

- `storage.publicAccessPrevention` – Prevents public access to Cloud Storage resources.
- `iam.disableServiceAccountKeyCreation` – Prevents creation of service account keys.
- `iam.disableServiceAccountKeyUpload` – Prevents uploading service account keys.
- `compute.disableSerialPortAccess` – Restricts Compute Engine serial port access.

## Terraform Structure

```text
├── baselines/
│   ├── storage.tf
│   ├── iam.tf
│   ├── compute.tf
│   └── variables.tf
├── exceptions/
│   ├── project_exception.tf
│   ├── project_only_pap.tf
│   └── variables.tf
├── .github/workflows/
│   ├── terraform-plan.yml
│   └── terraform-apply.yml
├── main.tf
├── variables.tf
└── versions.tf

**GitOps Workflow
**
Feature Branch → Pull Request → Terraform Validate → Terraform Plan
→ Review → Merge → Terraform Apply → GCP Policy Deployment

Validation:
Organization-level policy enforcement
Project-level policy exception
Effective policy inheritance validation
Terraform state validation using GCS
GitHub Actions deployment validation
Drift detection and remediation

Security:

No credentials, service-account keys, or Terraform state files are stored
in the repository. Authentication is handled through GitHub Actions secrets.

Outcome:

The project provides a scalable Governance-as-Code model with centralized
policy enforcement, controlled project exceptions, automated deployments,
and Git-based auditability.
