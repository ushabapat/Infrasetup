The complete infrastructure setup .


Directory Structure



├── main.tf

├── variables.tf

├── outputs.tf

├── modules

│   ├── resource_group

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   ├── outputs.tf

│   ├── storage_account

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   ├── outputs.tf

│   ├── virtual_network

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   ├── outputs.tf

│   ├── log_analytics

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   ├── outputs.tf

│   ├── key_vault

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   ├── outputs.tf

│   ├── aks

│       ├── main.tf

│       ├── variables.tf

│       ├── outputs.tf

├── environments

│   ├── dev.tfvars

│   ├── prod.tfvars
