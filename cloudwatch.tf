resource "aws_cloudwatch_log_group" "name" {
    name = format("%s/%s/logs", var.cluster_name, var.service_name)
}