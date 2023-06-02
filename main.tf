module "vpc" {
    source = "../terraform_modules/vpc"
    cidr_block = "var.vpc_cidr"
    tags = "var.tags"
}