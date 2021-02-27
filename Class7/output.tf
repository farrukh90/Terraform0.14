output "region" {
  value = var.region
}
output "subnet_list" {
  value = var.subnet_ids
}
output "db_access" {
  value = var.db_access
}
output "DB_NAME" {
  value = aws_db_instance.default.identifier
}


output "endpoint" {
  value = aws_db_instance.default.endpoint
}