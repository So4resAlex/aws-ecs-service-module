variable "region" {
  description = "Regiao onde os recursos serão criados"
}
variable "service_name" {
  description = "Nome do serviço"
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster"
  type        = string

}

variable "service_port" {
  description = "Porta do servico"
  type        = number
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "private_subnets" {
  description = "IDS das subnets privadas"
  type        = list(any)
}

variable "service_cpu" {
  description = "CPU que sera alocada para as tasks"
  #   type = 
}

variable "service_memory" {
  description = "Memória que sera alocada para as tasks"
  #   type = 
}

variable "service_listener" {
  description = "Listener que será usado pelo serviço"
  type        = string
}

variable "service_task_execution_role" {
  description = "Task execution role"
  type        = string
}

variable "service_launch_type" {
  type        = string
  description = "Tipo de lançamento para o serviço no ECS, como 'FARGATE' ou 'EC2'."
}

variable "service_task_count" {
  type        = number
  description = "Número de instâncias da tarefa a serem executadas simultaneamente no serviço."
}

variable "service_hosts" {
  type        = list(string)
  description = "Lista de hosts associados ao serviço, geralmente especificados para configurações DNS."
}

variable "service_healthcheck" {
  type        = map(any)
  description = "Configuração do health check do serviço, incluindo caminho e protocolo."
}

variable "environment_variables" {
  description = "Lista de variáveis de ambiente que serão passadas para o serviço."
  type        = list(any)
}

variable "capabilities" {
  description = "Lista de capacidades necessárias para a execução do serviço, como 'CAP_SYS_ADMIN' para recursos Linux específicos."
  type        = list(any)
}

variable "scale_type" {
  type        = string
  description = "Tipo de escalabilidade, como 'cpu', 'cpu_tracking' ou 'request_tracking'"
  default     = null
}

variable "task_maximum" {
  type        = number
  description = "Número maximo de tarefas que podem ser executadas pelo serviço"
  default     = 10

}
variable "task_minimum" {
  type        = number
  description = "Número minimo de tarefas que podem ser executadas pelo serviço"
  default     = 2
}

###Auto Scaling de CPU

variable "scale_out_cpu_threshold" {
  type        = number
  description = "Valor de limite de utilização de cpu que, quando ultrapassado, aciona uma ação de escla para cima, em percentual"
  default     = 80
}

variable "scale_out_adjustment" {
  type        = number
  description = "Quantade de tasks a adicionar quando há a ação de escalar pra cima"
  default     = 1
}

variable "scale_out_comparison_operator" {
  type        = string
  description = "Operador de comparação usado para a condição de escala para cima, como 'GreaterThanOrEqualToThreshold'"
  default     = "GreaterThanOrEqualToThreshold"
}

variable "scale_out_statistic" {
  type        = string
  description = "Estatistica usada para a condição de escala pra cima, como Average ou Sum"
  default     = "Averege"
}

variable "scale_out_period" {
  type        = number
  description = "Duração do periodo de avaliação de escala para cima, em segundos"
  default     = 2
}

variable "scale_out_evaluation_period" {
  type        = number
  description = "Numero de periodos de avaliação necessarios para acionar uma escla para cima"
  default     = 2
}

variable "scale_out_cooldown" {
  type        = number
  description = "Periodo de espera para reavaliar as metricas após uma ação de escalar para cima"
  default     = 60
}

variable "scale_in_cpu_threshold" {
  type        = number
  description = "Valor de limite de utilização de cpu que, quando menor, aciona uma ação de escla para baixo, em percentual"
  default     = 80
}

variable "scale_in_adjustment" {
  type        = number
  description = "Quantade de tasks a remover quando há a ação de escalar pra baixo"
  default     = 1
}

variable "scale_in_comparison_operator" {
  type        = string
  description = "Operador de comparação usado para a condição de escala para baixo, como 'LessThanOrEqualToThreshold'"
  default     = "GreaterThanOrEqualToThreshold"
}

variable "scale_in_statistic" {
  type        = string
  description = "Estatistica usada para a condição de escala pra baixo, como Average ou Sum"
  default     = "Averege"
}

variable "scale_in_period" {
  type        = number
  description = "Duração do periodo de avaliação de escala para baixo, em segundos"
  default     = 2
}

variable "scale_in_evaluation_period" {
  type        = number
  description = "Numero de periodos de avaliação necessarios para acionar uma escla para baixo"
  default     = 2
}

variable "scale_in_cooldown" {
  type        = number
  description = "Periodo de espera para reavaliar as metricas após uma ação de escalar para baixo"
  default     = 60
}

###Auto Scaling de Target Tracking CPU
variable "scale_tracking_cpu" {
  type = number
  description = "Valor de utilização de CPU alvo para o rastreamento de escala, em percentual."
  default = 80
}

### Auto Scaling de Request tracking
variable "alb_arn" {
  type = string
  description = "ARN do Application Load Balancer usado para rastreamento de solicitaçẽos"
  default = null
}

variable "scale_tracking_requests" {
  type = number
  description = "Número alvo de solicitaçãos por segundo para rastreamento de escala"
  default = 0
}


