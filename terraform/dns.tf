# bestmount.bradtgmurray.com -> Vercel
resource "cloudflare_record" "bestmount" {
  zone_id = var.bradtgmurray_zone_id
  name    = "bestmount"
  content = "cname.vercel-dns.com"
  type    = "CNAME"
  proxied = false # Must be false for Vercel SSL to work
  ttl     = 1     # Auto TTL when not proxied
}
