# aws-ecs-service-module
aws-ecs-service-module
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_alb_listener_rule.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener_rule) | resource |
| [aws_alb_target_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_appautoscaling_policy.cpu_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.cpu_low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.target_tracking_cpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.target_tracking_requests](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_target.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_cloudwatch_log_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_metric_alarm.cpu_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cpu_low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_ecr_repository.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecs_service.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_iam_role.service_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.service_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_alb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/alb) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_arn"></a> [alb\_arn](#input\_alb\_arn) | ARN of the Application Load Balancer used for request tracking. | `string` | `null` | no |
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | List of capabilities, such as EC2 or FARGATE. | `list(string)` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the ECS cluster where the service will be deployed. | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | List of environment variables to be passed to the service. | `list(map(string))` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of IDs of the private subnets where the service will be deployed. | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where AWS resources will be provisioned. | `string` | n/a | yes |
| <a name="input_scale_in_adjustment"></a> [scale\_in\_adjustment](#input\_scale\_in\_adjustment) | Number of tasks to reduce during a downward scaling action. | `number` | `-1` | no |
| <a name="input_scale_in_comparison_operator"></a> [scale\_in\_comparison\_operator](#input\_scale\_in\_comparison\_operator) | Comparison operator used for the scale-down condition, such as 'LessThanOrEqualToThreshold'. | `string` | `"LessThanOrEqualToThreshold"` | no |
| <a name="input_scale_in_cooldown"></a> [scale\_in\_cooldown](#input\_scale\_in\_cooldown) | Cooldown period after a downward scaling action, in seconds. | `number` | `120` | no |
| <a name="input_scale_in_cpu_threshold"></a> [scale\_in\_cpu\_threshold](#input\_scale\_in\_cpu\_threshold) | CPU utilization threshold value that, when below, triggers a downward scaling action, in percentage. | `number` | `30` | no |
| <a name="input_scale_in_evaluation_periods"></a> [scale\_in\_evaluation\_periods](#input\_scale\_in\_evaluation\_periods) | Number of evaluation periods required to trigger a scale-down. | `number` | `3` | no |
| <a name="input_scale_in_period"></a> [scale\_in\_period](#input\_scale\_in\_period) | Duration of the evaluation period for scale-down, in seconds. | `number` | `120` | no |
| <a name="input_scale_in_statistic"></a> [scale\_in\_statistic](#input\_scale\_in\_statistic) | Statistic used for the scale-down condition, such as 'Average' or 'Sum'. | `string` | `"Average"` | no |
| <a name="input_scale_out_adjustment"></a> [scale\_out\_adjustment](#input\_scale\_out\_adjustment) | Number of tasks to increase during an upward scaling action. | `number` | `1` | no |
| <a name="input_scale_out_comparison_operator"></a> [scale\_out\_comparison\_operator](#input\_scale\_out\_comparison\_operator) | Comparison operator used for the scale-up condition, such as 'GreaterThanOrEqualToThreshold'. | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_scale_out_cooldown"></a> [scale\_out\_cooldown](#input\_scale\_out\_cooldown) | Cooldown period after an upward scaling action, in seconds. | `number` | `60` | no |
| <a name="input_scale_out_cpu_threshold"></a> [scale\_out\_cpu\_threshold](#input\_scale\_out\_cpu\_threshold) | CPU utilization threshold value that, when exceeded, triggers an upward scaling action, in percentage. | `number` | `80` | no |
| <a name="input_scale_out_evaluation_periods"></a> [scale\_out\_evaluation\_periods](#input\_scale\_out\_evaluation\_periods) | Number of evaluation periods required to trigger a scale-up. | `number` | `2` | no |
| <a name="input_scale_out_period"></a> [scale\_out\_period](#input\_scale\_out\_period) | Duration of the evaluation period for scale-up, in seconds. | `number` | `60` | no |
| <a name="input_scale_out_statistic"></a> [scale\_out\_statistic](#input\_scale\_out\_statistic) | Statistic used for the scale-up condition, such as 'Average' or 'Sum'. | `string` | `"Average"` | no |
| <a name="input_scale_tracking_cpu"></a> [scale\_tracking\_cpu](#input\_scale\_tracking\_cpu) | Target CPU utilization value for scale tracking, in percentage. | `number` | `80` | no |
| <a name="input_scale_tracking_requests"></a> [scale\_tracking\_requests](#input\_scale\_tracking\_requests) | Target number of requests per second (TPS) for scale tracking. | `number` | `0` | no |
| <a name="input_scale_type"></a> [scale\_type](#input\_scale\_type) | Type of scaling, such as 'cpu', 'cpu\_tracking' or 'requests\_tracking'. | `string` | `null` | no |
| <a name="input_service_cpu"></a> [service\_cpu](#input\_service\_cpu) | Amount of CPU allocated for the service, specified in ECS CPU units. | `number` | n/a | yes |
| <a name="input_service_healthcheck"></a> [service\_healthcheck](#input\_service\_healthcheck) | Configuration of the service's health check, including path and protocol. | `map(any)` | n/a | yes |
| <a name="input_service_hosts"></a> [service\_hosts](#input\_service\_hosts) | List of hosts associated with the service, usually specified for DNS configurations. | `list(string)` | n/a | yes |
| <a name="input_service_launch_type"></a> [service\_launch\_type](#input\_service\_launch\_type) | Launch type for the service in ECS, such as 'FARGATE' or 'EC2'. | `string` | n/a | yes |
| <a name="input_service_listener"></a> [service\_listener](#input\_service\_listener) | ARN of the Application Load Balancer listener that will be used by the service. | `string` | n/a | yes |
| <a name="input_service_memory"></a> [service\_memory](#input\_service\_memory) | Amount of memory allocated for the service, specified in MB. | `number` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of the service to be used in ECS or similar identifier. | `string` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | Port on which the service will be accessible. | `number` | n/a | yes |
| <a name="input_service_task_count"></a> [service\_task\_count](#input\_service\_task\_count) | Number of task instances to be run concurrently in the service. | `number` | n/a | yes |
| <a name="input_service_task_execution_role"></a> [service\_task\_execution\_role](#input\_service\_task\_execution\_role) | ARN of the ECS task execution role that the service will use to run. | `string` | n/a | yes |
| <a name="input_task_maximum"></a> [task\_maximum](#input\_task\_maximum) | Maximum number of tasks that can be run by the service. | `number` | `10` | no |
| <a name="input_task_minimum"></a> [task\_minimum](#input\_task\_minimum) | Minimum number of tasks that must be run by the service. | `number` | `3` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where service-related resources will be provisioned. | `string` | n/a | yes |

## Outputs

No outputs.
