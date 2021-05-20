# terraform_march_2021

## Please add below code
```
module "wordpress" {
    source             = "../"
    desired_capacity   = 3
    max_size           = 3
    min_size           = 3
    instance_type      = "c5.large"
    region             = "us-east-1"
}
```