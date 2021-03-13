variable "config" {
  type = map(any)
  default = {
    billing_account = "0194F-73F161-8E51"
    description     = "Billing Account"
    currency_code   = "USD"
    units           = "20"
    email_address = "address@example.com"
  }
}
