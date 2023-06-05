module "ecs_cluster" {

    source = "../terraform-module-ecs-cluster"

    ecs_cluster_name = var.ecs_cluster_name
    ecs_log_group_name = var.ecs_log_group_name
    tags = var.tags
}