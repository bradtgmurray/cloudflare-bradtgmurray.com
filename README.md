# cloudflare-bradtgmurray.com

## Resume Pages deployment

Static resume content lives in `pages/resume`.

### One-time setup

1. Authenticate Wrangler:
   `yarn wrangler login`
2. Create `terraform/terraform.tfvars` from `terraform/terraform.tfvars.example` and fill values.
3. Export a Cloudflare API token with Pages + DNS edit permissions:
   `export CLOUDFLARE_API_TOKEN=...`
4. Create/update the Pages project and custom domain:
   `cd terraform && terraform init && terraform apply`

### Deploy resume content

Deploy the current `pages/resume` directory to production:

`yarn pages:resume:deploy`
