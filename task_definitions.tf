resource "aws_ecs_task_definition" "main" {
  family                   = format("%s-%s", var.cluster_name, var.service_name)
  network_mode             = "awsvpc"
  requires_compatibilities = var.capabilities
  cpu                      = var.service_cpu
  memory                   = var.service_memory

}