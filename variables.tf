variable "region" {} #TO-DO 

variable "service_name" {}

variable "cluster_name" {}

variable "vpc_id" {}

variable "private_subnets" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "service_listener" {}

variable "service_task_execution_role" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "service_hosts" {}

variable "service_healthcheck" {
  type = map(any)

}

variable "environment_variables" { #TO-DO 
  type = list(any)
}

variable "capabilities" { #TO-DO 
  type = list(any)
}

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

#### Auto Scaling de cpu

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}