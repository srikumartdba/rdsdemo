provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  type    = string
  default = "us-east-1" # Change to your desired default region
}

variable "rds_identifier" {
  type = string
}

variable "rds_allocated_storage" {
  type = number
}

variable "rds_engine" {
  type = string
}

variable "rds_engine_version" {
  type = string
}

variable "rds_instance_class" {
  type = string
}

variable "rds_name" {
  type = string
}

variable "rds_username" {
  type = string
}

variable "rds_password" {
  type = string
}

resource "aws_db_instance" "example" {
  identifier        = var.rds_identifier
  allocated_storage = var.rds_allocated_storage
  engine            = var.rds_engine
  engine_version    = var.rds_engine_version
  instance_class    = var.rds_instance_class
  name              = var.rds_name
  username          = var.rds_username
  password          = var.rds_password
}
