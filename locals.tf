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
    rds_security_group_id = module.rds_sg.security_group_id
}

locals {
    db_subnet_group_name = module.vpc.db_subnet_group_name
}

locals {
    ecs_cluster_id = module.ecs_cluster.ecs_cluster_id
} 

locals {
   

    app_alb_security_group_id = module.app_alb_sg.security_group_id

}



# locals {
# app_alb_arn = module.app_alb.lb_arn
# }

locals {
     private_subnet_ids        = module.vpc.private_subnet_ids
}