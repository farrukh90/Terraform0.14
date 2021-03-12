resource "google_dns_record_set" "wordpress" {
  name         = "wordpress.${google_dns_managed_zone.prod.dns_name}"
  type         = "A"
  ttl          = 60
  managed_zone = google_dns_managed_zone.prod.name
  rrdatas      = ["127.0.0.1"]
}
resource "google_dns_managed_zone" "prod" {
  name     = "wordpress"
  dns_name = "prod.acirrustech.net."
}