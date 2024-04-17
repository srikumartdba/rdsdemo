provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "example" {
  identifier            = var.rds_identifier
  allocated_storage     = var.rds_allocated_storage
  engine                = var.rds_engine
  engine_version        = var.rds_engine_version
  instance_class        = var.rds_instance_class
  name                  = var.rds_name
  username              = var.rds_username
  password              = var.rds_password
}
