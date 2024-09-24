variable "region" {
  type        = string
  description = "Region where AWS resources will be provisioned."
}

variable "service_name" {
  type        = string
  description = "Name of the service to be used in ECS or similar identifier."
}

variable "cluster_name" {
  type        = string
  description = "Name of the ECS cluster where the service will be deployed."
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC where service-related resources will be provisioned."
}

variable "private_subnets" {
  type        = list(string)
  description = "List of IDs of the private subnets where the service will be deployed."
}

variable "service_port" {
  type        = number
  description = "Port on which the service will be accessible."
}

variable "service_cpu" {
  type        = number
  description = "Amount of CPU allocated for the service, specified in ECS CPU units."
}

variable "service_memory" {
  type        = number
  description = "Amount of memory allocated for the service, specified in MB."
}

variable "service_listener" {
  type        = string
  description = "ARN of the Application Load Balancer listener that will be used by the service."
}

variable "service_task_execution_role" {
  type        = string
  description = "ARN of the ECS task execution role that the service will use to run."
}

variable "service_launch_type" {
  type        = string
  description = "Launch type for the service in ECS, such as 'FARGATE' or 'EC2'."
}

variable "service_task_count" {
  type        = number
  description = "Number of task instances to be run concurrently in the service."
}

variable "service_hosts" {
  type        = list(string)
  description = "List of hosts associated with the service, usually specified for DNS configurations."
}

variable "service_healthcheck" {
  type        = map(any)
  description = "Configuration of the service's health check, including path and protocol."
}

variable "environment_variables" {
  type        = list(map(string))
  description = "List of environment variables to be passed to the service."
}

variable "capabilities" {
  type        = list(string)
  description = "List of capabilities, such as EC2 or FARGATE."
}

variable "scale_type" {
  type        = string
  description = "Type of scaling, such as 'cpu', 'cpu_tracking' or 'requests_tracking'."
  default     = null
}

variable "task_minimum" {
  type        = number
  description = "Minimum number of tasks that must be run by the service."
  default     = 3
}

variable "task_maximum" {
  type        = number
  description = "Maximum number of tasks that can be run by the service."
  default     = 10
}

variable "scale_out_cpu_threshold" {
  type        = number
  description = "CPU utilization threshold value that, when exceeded, triggers an upward scaling action, in percentage."
  default     = 80
}

variable "scale_out_adjustment" {
  type        = number
  description = "Number of tasks to increase during an upward scaling action."
  default     = 1
}

variable "scale_out_comparison_operator" {
  type        = string
  description = "Comparison operator used for the scale-up condition, such as 'GreaterThanOrEqualToThreshold'."
  default     = "GreaterThanOrEqualToThreshold"
}

variable "scale_out_statistic" {
  type        = string
  description = "Statistic used for the scale-up condition, such as 'Average' or 'Sum'."
  default     = "Average"
}

variable "scale_out_period" {
  type        = number
  description = "Duration of the evaluation period for scale-up, in seconds."
  default     = 60
}

variable "scale_out_evaluation_periods" {
  type        = number
  description = "Number of evaluation periods required to trigger a scale-up."
  default     = 2
}

variable "scale_out_cooldown" {
  type        = number
  description = "Cooldown period after an upward scaling action, in seconds."
  default     = 60
}

variable "scale_in_cpu_threshold" {
  type        = number
  description = "CPU utilization threshold value that, when below, triggers a downward scaling action, in percentage."
  default     = 30
}

variable "scale_in_adjustment" {
  type        = number
  description = "Number of tasks to reduce during a downward scaling action."
  default     = -1
}

variable "scale_in_comparison_operator" {
  type        = string
  description = "Comparison operator used for the scale-down condition, such as 'LessThanOrEqualToThreshold'."
  default     = "LessThanOrEqualToThreshold"
}

variable "scale_in_statistic" {
  type        = string
  description = "Statistic used for the scale-down condition, such as 'Average' or 'Sum'."
  default     = "Average"
}

variable "scale_in_period" {
  type        = number
  description = "Duration of the evaluation period for scale-down, in seconds."
  default     = 120
}

variable "scale_in_evaluation_periods" {
  type        = number
  description = "Number of evaluation periods required to trigger a scale-down."
  default     = 3
}

variable "scale_in_cooldown" {
  type        = number
  description = "Cooldown period after a downward scaling action, in seconds."
  default     = 120
}

variable "scale_tracking_cpu" {
  type        = number
  description = "Target CPU utilization value for scale tracking, in percentage."
  default     = 80
}

variable "alb_arn" {
  type        = string
  description = "ARN of the Application Load Balancer used for request tracking."
  default     = null
}

variable "scale_tracking_requests" {
  type        = number
  description = "Target number of requests per second (TPS) for scale tracking."
  default     = 0
}