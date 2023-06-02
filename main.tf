module "vpc" {
    source = "../terraform_modules/vpc"
    vpc_cidr = var.vpc_cidr
    tags = var.tags
    public_subnet_cidr = var.public_subnet_cidr
    azs = var.azs
    public_subnet_names = var.public_subnet_names
}