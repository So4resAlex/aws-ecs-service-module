variable "service_name" {
  description = "Nome do serviço"
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster"
  type        = string

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

