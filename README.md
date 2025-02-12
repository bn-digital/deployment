# Deployment Guide

This document outlines the process for deploying the application to the production environment. Before proceeding, ensure all pre-requisites are met as detailed in the prerequisites document.

**NOTE**: For cloud providers, only **DigitalOcean** is supported.

## Pre-requisites

* Terraform >= 1.8.2
* Ansible >= 2.17.8

## Deploy

1. Make `deploy.sh` executable: 
```bash
chmod +x deploy.sh
```
2. Insert necessary variables into `./terraform/terraform.tfvars`: You can find the variable definitions in the `./terraform/variables.tf` file.
3. Uncomment the required variables and insert the appropriate values in the `./playbooks/site.yaml` file.
4. Install playbooks' collections:
```bash
ansible-galaxy install -r requirements.yaml
```
5. Run the deploymant script
```bash
./deploy.sh
```