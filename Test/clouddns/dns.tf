resource "google_dns_record_set" "wordpress" {
  name         = "wordpress.${google_dns_managed_zone.wordpress.dns_name}"
  type         = "A"
  ttl          = 60
  managed_zone = google_dns_managed_zone.wordpress.name
  rrdatas      = ["127.0.0.1"]
}
resource "google_dns_managed_zone" "wordpress" {
  name     = "wordpress"
  dns_name = "acirrustech.net."
}

output wordpress_urls {
  value       = google_dns_record_set.wordpress.name
}
