# CYNA
Repo projet fil rouge CYNA
# CYNA Infrastructure

## Prérequis
- Terraform >= 1.5.6
- Ansible >= 2.15
- Azure CLI >= 2.50
- Git

## Déploiement

### 1. Cloner le repo
git clone https://github.com/aymanchrb/CYNA.git
cd CYNA

### 2. Connexion Azure
az login
az account set --subscription 4fe57521-ed29-458f-8e6f-581e34c3f503

### 3. Terraform
cd terraform/environments/prod
terraform init
terraform plan
terraform apply

### 4. Ansible
cd ansible
ansible-playbook -i inventories/prod/hosts.ini site.yml --ask-vault-pass

## Architecture réseau
- DMZ : 10.0.10.0/24 - Nginx + App CYNA
- APP : 10.0.20.0/24 - Serveur applicatif
- DB : 10.0.30.0/24 - PostgreSQL
- ADMIN : 10.0.40.0/24 - Administration
- SOC : 10.0.50.0/24 - Wazuh SIEM
- IDENTITY : 10.0.80.0/24 - Active Directory

## Sécurité
- SSH par clés uniquement
- MFA obligatoire
- Ansible Vault pour les credentials
- SIEM Wazuh sur tous les serveurs

## Pipeline CI/CD
GitHub Actions valide automatiquement Terraform et Ansible a chaque push.
