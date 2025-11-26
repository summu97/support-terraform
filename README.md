# Terraform Deployment Guide

This repository uses Terraform with separate variable files for each environment.
You can deploy to **Dev**, **QA**, or **Prod** by selecting the appropriate `.tfvars` file.

If you want to deploy to a specific environment, **modify the variables inside the corresponding `.tfvars` file**, then run the Terraform commands shown below.
---

**Folder Structure**
```bash
terraform/
│
├── autoscale_settings/
│   ├── main.tf
│   ├── variables.tf
│   ├── versions.tf
│   ├── outputs.tf
│   ├── backend.tf
│   └── env/
│       ├── dev.tfvars
│       └── prod.tfvars
│
├── cdn_profile/
│   ├── main.tf
│   ├── variables.tf
│   ├── versions.tf
│   ├── outputs.tf
│   ├── backend.tf
│   └── env/
│       ├── dev.tfvars
│       └── qa.tfvars
│
├── azure_redis_cache/
│   ├── main.tf
│   ├── variables.tf
│   ├── versions.tf
│   ├── outputs.tf
│   ├── backend.tf
│   └── env/
│       ├── dev.tfvars
│       └── prod.tfvars
│
├── disk_encryption_set/
│   ├── main.tf
│   ├── variables.tf
│   ├── versions.tf
│   ├── outputs.tf
│   ├── backend.tf
│   └── env/
│       ├── dev.tfvars
│       └── prod.tfvars
│
└── README.md
```


---

## 🚀 Dev Environment

```bash
terraform init
terraform plan -var-file="env/dev.tfvars"
terraform apply -var-file="env/dev.tfvars"
```

---

## 🧪 QA Environment

```bash
terraform init
terraform plan -var-file="env/qa.tfvars"
terraform apply -var-file="env/qa.tfvars"
```

---

## 🔥 Prod Environment

```bash
terraform init
terraform plan -var-file="env/prod.tfvars"
terraform apply -var-file="env/prod.tfvars"
```

---

## 📌 Notes

* Each environment has its own configuration under the `env/` folder.
* Edit the respective `.tfvars` file (e.g., `dev.tfvars`, `qa.tfvars`, `prod.tfvars`) **before applying**, if you want to change:

  * Region
  * Resource names
  * Sizes
  * Tags
  * Any environment-specific parameters
* Always run `terraform plan` before `terraform apply` to review changes.

---


