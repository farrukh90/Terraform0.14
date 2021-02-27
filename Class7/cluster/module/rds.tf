module "db" {
    source = "../"
    region = "us-east-2"
    subnet_ids = [
        "subnet-023397f6469eba1c7",
        "subnet-072e7b996506b11c4",
        "subnet-062fe6f8a1156189d"
    ]
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    username            = "foo"
    publicly_accessible = true
    db_access = [
        "50.194.68.230/32",
        "50.194.68.231/32",
        "0.0.0.0/0"
    ]
}
output region {
	value = module.db.region
}
output subnet_list {
	value = module.db.subnet_list
}
output db_access {
	value = module.db.db_access
}
output DB_NAME {
	value = module.db.DB_NAME
}
output endpoint {
	value = module.db.endpoint
}

