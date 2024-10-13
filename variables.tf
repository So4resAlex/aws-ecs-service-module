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

