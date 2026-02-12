variable "bradtgmurray_zone_id" {
  description = "Cloudflare Zone ID for bradtgmurray.com"
  type        = string
  default     = "1e393dcec4273f6e678487501656b23c"
}

variable "cloudflare_account_id" {
  description = "Cloudflare Account ID that owns the Pages project"
  type        = string
  default     = "ad2f7024c7ec901e5847269564b56e9b"
}

variable "resume_pages_project_name" {
  description = "Cloudflare Pages project name for the resume site"
  type        = string
  default     = "resume-bradtgmurray-com"
}

variable "resume_custom_domain" {
  description = "Custom domain for the resume Pages project"
  type        = string
  default     = "resume.bradtgmurray.com"
}
