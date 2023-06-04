locals {
    # timing public this is equal to project name - public
    public_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "public" )
}

locals {
    # timing public this is equal to project name - public
    private_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "private" )
}

locals {
    # timing public this is equal to project name - public
    database_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "database" )
}

locals {
    vpc_id = module.vpc.vpc_id
}

locals {
    rds_security_group_name = module.rds_sg.security_group_id
}