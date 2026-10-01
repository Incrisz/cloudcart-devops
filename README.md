# cloudcart-devops

Terraform infrastructure for CloudCart.

## Project Directory

```bash
cd cloudcart-devops/terraform
```

Use the Terraform directory before running the commands below.

## Terraform Setup

```bash
terraform --version
```

Checks that Terraform is installed and available in your terminal.

```bash
terraform init
```

Initializes Terraform and downloads the required providers:

- `hashicorp/aws`
- `hashicorp/google`

```bash
terraform validate
```

Validates the Terraform configuration syntax.

## Cloud Authentication

```bash
aws sts get-caller-identity
```

Confirms the active AWS identity and verifies AWS credentials.

```bash
gcloud auth list
```

Lists authenticated Google Cloud accounts.

```bash
gcloud config get-value project
```

Shows the currently selected Google Cloud project.

```bash
gcloud config set project stoqaa-dev
```

Sets `stoqaa-dev` as the active Google Cloud project.

```bash
gcloud auth application-default login
```

Creates application default credentials for Terraform to use with Google Cloud.

## Terraform Deployment

```bash
terraform plan
```

Previews the infrastructure changes Terraform will make.

```bash
terraform apply
```

Applies the planned infrastructure changes.

## Verification

```bash
aws s3 ls
```

Lists AWS S3 buckets to verify AWS access.

```bash
gcloud storage buckets list
```

Lists Google Cloud Storage buckets to verify Google Cloud access.

```bash
terraform state list
```

Lists resources currently tracked in the Terraform state.
