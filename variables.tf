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

variable "environment_variables" {
  description = "Lista de variáveis de ambiente que serão passadas para o serviço."
  type        = list(any)
}

variable "capabilities" {
  description = "Lista de capacidades necessárias para a execução do serviço, como 'CAP_SYS_ADMIN' para recursos Linux específicos."
  type        = list(any)
}
