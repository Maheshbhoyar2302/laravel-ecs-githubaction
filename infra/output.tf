output project_name {
  value = var.project_name
}

output region {
  value = var.region
}

output ecr_image {
    value = var.ecr_image
}

output vpc_id {
    value = aws_vpc.vpc.id
}

# output alb_dns_name {
#     value = "http://${aws_alb.alb_dns_name}"
# }

output security_groups_alb {
    value = aws_security_group.alb.id
}

output security_groups_ecs_tasks {
    value = aws_security_group.ecs_tasks.id
}