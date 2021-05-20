variable "region" {
  default = "us-east-2"
}

variable "subnet_ids" {
  type = list(any)
}
variable "identifier" {}
variable "storage_type" {}
variable "allocated_storage" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "name" {}
variable "username" {}
variable "publicly_accessible" {}
variable "allowed_hosts" {
  type = list(any)
}