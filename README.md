# terraform_march_2021
## Please add below code
```
module "rds" {
    source = "farrukh90/rds-instance/aws"
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
        "subnet-",
        "subnet-",
        "subnet-"
    ]
    allowed_hosts = [
        "50.194.68.1/32",
        "127.0.0.1/32"
    ]
}
output "region" {
	value = module.rds.region
}
output "subnet_list" {
	value = module.rds.subnet_list
}
output "allowed_hosts" {
	value = module.rds.allowed_hosts
}
output "rds" {
	value = module.rds.DB_NAME
}
```
