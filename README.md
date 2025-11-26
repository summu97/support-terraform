**Folder Struture**:

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
Here is a clean and professional **README.md** version for GitHub:

---

# How to Run

This project uses Terraform with environment-specific variable files.
Follow the steps below to deploy to **Dev**, **QA**, or **Prod**.

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


