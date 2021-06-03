module "wordpress_db" {
    source = "noorlan/terraform-aws-rds-instance"

    region              = "us-east-2"
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    name                = "mydb"
    username            = "foo"
    publicly_accessible = true

    subnet_ids = [
        "subnet-08e95b53a305ceb55", 
        "subnet-0440aa0610ffc5164", 
        "subnet-005f6860d4455f090"
    ]

    allowed_hosts = [
        "50.194.68.230/32",
        "127.0.0.1/32"
    ]
}

output "region" {
	value = module.wordpress_db.region
}
output "subnet_list" {
	value = module.wordpress_db.subnet_list
}
output "allowed_hosts" {
	value = module.wordpress_db.allowed_hosts
}
output "wordpress_db_NAME" {
	value = module.wordpress_db.DB_NAME
}
