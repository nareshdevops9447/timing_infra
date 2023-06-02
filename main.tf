module "vpc" {
    source = "../terraform_modules/vpc"
    vpc_cidr = var.vpc_cidr
    tags = var.tags
}