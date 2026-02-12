resource "cloudflare_pages_project" "resume" {
  account_id        = var.cloudflare_account_id
  name              = var.resume_pages_project_name
  production_branch = "main"
}

resource "cloudflare_record" "resume" {
  zone_id = var.bradtgmurray_zone_id
  name    = "resume"
  content = cloudflare_pages_project.resume.subdomain
  type    = "CNAME"
  proxied = true
  ttl     = 1
}

resource "cloudflare_pages_domain" "resume" {
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.resume.name
  domain       = var.resume_custom_domain

  depends_on = [cloudflare_record.resume]
}
