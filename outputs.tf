output "vpc_id" {
    value = module.vpc.vpc_id
}

output "rds_security_group_name" {
  value = local.rds_security_group_id
}

output "ecs_cluster_id" {
    value = local.ecs_cluster_id
}