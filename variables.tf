variable "tags" {
  type = map
  default = {
    Name = "timing"
    Envorinment = "DEV"
    Terraform = "true"
  }
}

variable "vpc_cidr" {
    type = string
  default = "10.0.0.0/16"
}

variable "azs" {
    type = list
    default = ["us-east-1a" , "us-east-1b"]
}

variable "public_subnet_cidr" {
    type = list
    default =["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_names" {
    type = list
    default = ["timing-public-1a","timing-public-1b"]
}

variable "private_subnet_cidr" {
    type = list
    default =["10.1.0.0/24", "10.2.0.0/24"]
}

variable "private_subnet_names" {
    type = list
    default = ["timing-private-1a","timing-private-1b"]
}

variable "database_subnet_cidr" {
    type = list
    default =["10.11.0.0/24", "10.12.0.0/24"]
}

variable "database_subnet_names" {
    type = list
    default = ["timing-database-1a","timing-database-1b"]
}

variable "rds_security_group_name" {
    type = string
    default = "timing"
}

variable "rds_security_group_description" {
    type = string
    default = "This security group is to attach timing RDS"
}

variable "ingress_cidr" {
    default = []
}

variable "allocated_storage" {
default = "10"
}

variable "db_name" {
    default = "timing"

}

variable "identifier" {
    default = "timing"
  
}

variable "engine" {
  default = "postgress"
}

variable "engine_version" { 
    default = "14.7-R1"
}

variable "rds_username" {
    default = "admin"
}

variable "secret_name" {
  default = "timing/rds_password_value"
}

variable "instance_type" {
    default = "db.t4g.micro"
}

variable "rds_tags" {
type = string
default = "rds"
}

variable "rds_secret_arn" {
    default = "arn:aws:secretsmanager:us-east-1:872945671818:secret:timing/rds-password-secret-jvc47n"

}

variable "ecs_cluster_name" {
    type = string
    default = "timing"
}

variable "ecs_log_group_name" {
    default ="/timing/ecs-cluster"

}

variable "app_alb_security_group_name" {
  default = "timing-app_alb"
}

variable "app_alb_security_group_description" {
    default = "this is used for application ALB"
  
}

variable "app_alb_ingress_cidr" {
    default = [ { from_port = "80"
    to_port = "80"
    cidr_block = "0.0.0.0/0"
    description = "opening 80 to internet"}, 
    { from_port = "443"
    to_port = "443"
    cidr_block = "0.0.0.0/0"
    description = "opening 443 to internet"

    }]
}