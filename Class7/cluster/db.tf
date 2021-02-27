resource "aws_rds_cluster" "default" {
  cluster_identifier   = var.identifier
  engine               = var.engine
  engine_version       = var.engine_version
  database_name        = var.identifier
  master_username      = var.username
  master_password      = random_password.password.result
  db_subnet_group_name = aws_db_subnet_group.db.name
  skip_final_snapshot  = true #used to delete the repo in the future without this you cant delete. There are bugs reported 
  vpc_security_group_ids = [
    aws_security_group.db.id
  ]
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = "aurora-cluster-demo-${count.index +1}"
    publicly_accessible  = var.publicly_accessible
  cluster_identifier = var.identifier
  instance_class     = "db.r4.large"
  engine_version       = var.engine_version
  engine               = var.engine
}