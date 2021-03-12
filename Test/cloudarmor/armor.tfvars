config = {
  project = "ckad-302703"
}

blacklisted_ips = [
    "9.9.9.0/24",
    "9.9.1.0/24"
]

blacklisted_countries = [
    "origin.region_code == 'CN'", 
    "origin.region_code == 'UA'",
    "origin.region_code == 'RU'",
]
    