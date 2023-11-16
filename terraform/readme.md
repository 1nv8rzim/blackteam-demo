# Terraform

## Set up

```bash
cp .env.example .env
```

Replace env with all neccesary secrets

```bash
source .env
```

## Deploy

```bash
terraform init
terraform plan
terraform apply
```

## Get IP

```bash
terraform output instance_id
```

## Destroy

```bash
terraform destroy
```
