## Comandos 

```bash
 ------------------------------------
 Terraform
 ------------------------------------

 make init - Terraform init
 make plan - Terraform plan
 make apply - Terraform apply
 make destroy - Terraform destroy
 make tfdocs - Gerar documentação do Terraform
 make clean - remover variáveis de ambiente
 ```

## Descrição geral do módulo

Este módulo cria os recursos necessários para rodar um aplicativo no Amazon ECS. Ele inclui repositórios de contêiner (ECR), permissões (IAM), segurança (Security Groups), e configurações de serviço e tarefa, além de integrações com ALB e CloudWatch Logs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |


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
| <a name="input_alb_arn"></a> [alb\_arn](#input\_alb\_arn) | ARN do Application Load Balancer usado para rastreamento de solicitaçẽos | `string` | `null` | no |
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | Lista de capacidades necessárias para a execução do serviço, como 'CAP\_SYS\_ADMIN' para recursos Linux específicos. | `list(any)` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nome do cluster | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | Lista de variáveis de ambiente que serão passadas para o serviço. | `list(any)` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | IDS das subnets privadas | `list(any)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Regiao onde os recursos serão criados | `any` | n/a | yes |
| <a name="input_scale_in_adjustment"></a> [scale\_in\_adjustment](#input\_scale\_in\_adjustment) | Quantade de tasks a remover quando há a ação de escalar pra baixo | `number` | `1` | no |
| <a name="input_scale_in_comparison_operator"></a> [scale\_in\_comparison\_operator](#input\_scale\_in\_comparison\_operator) | Operador de comparação usado para a condição de escala para baixo, como 'LessThanOrEqualToThreshold' | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_scale_in_cooldown"></a> [scale\_in\_cooldown](#input\_scale\_in\_cooldown) | Periodo de espera para reavaliar as metricas após uma ação de escalar para baixo | `number` | `60` | no |
| <a name="input_scale_in_cpu_threshold"></a> [scale\_in\_cpu\_threshold](#input\_scale\_in\_cpu\_threshold) | Valor de limite de utilização de cpu que, quando menor, aciona uma ação de escla para baixo, em percentual | `number` | `80` | no |
| <a name="input_scale_in_evaluation_period"></a> [scale\_in\_evaluation\_period](#input\_scale\_in\_evaluation\_period) | Numero de periodos de avaliação necessarios para acionar uma escla para baixo | `number` | `2` | no |
| <a name="input_scale_in_period"></a> [scale\_in\_period](#input\_scale\_in\_period) | Duração do periodo de avaliação de escala para baixo, em segundos | `number` | `2` | no |
| <a name="input_scale_in_statistic"></a> [scale\_in\_statistic](#input\_scale\_in\_statistic) | Estatistica usada para a condição de escala pra baixo, como Average ou Sum | `string` | `"Averege"` | no |
| <a name="input_scale_out_adjustment"></a> [scale\_out\_adjustment](#input\_scale\_out\_adjustment) | Quantade de tasks a adicionar quando há a ação de escalar pra cima | `number` | `1` | no |
| <a name="input_scale_out_comparison_operator"></a> [scale\_out\_comparison\_operator](#input\_scale\_out\_comparison\_operator) | Operador de comparação usado para a condição de escala para cima, como 'GreaterThanOrEqualToThreshold' | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_scale_out_cooldown"></a> [scale\_out\_cooldown](#input\_scale\_out\_cooldown) | Periodo de espera para reavaliar as metricas após uma ação de escalar para cima | `number` | `60` | no |
| <a name="input_scale_out_cpu_threshold"></a> [scale\_out\_cpu\_threshold](#input\_scale\_out\_cpu\_threshold) | Valor de limite de utilização de cpu que, quando ultrapassado, aciona uma ação de escla para cima, em percentual | `number` | `80` | no |
| <a name="input_scale_out_evaluation_period"></a> [scale\_out\_evaluation\_period](#input\_scale\_out\_evaluation\_period) | Numero de periodos de avaliação necessarios para acionar uma escla para cima | `number` | `2` | no |
| <a name="input_scale_out_period"></a> [scale\_out\_period](#input\_scale\_out\_period) | Duração do periodo de avaliação de escala para cima, em segundos | `number` | `2` | no |
| <a name="input_scale_out_statistic"></a> [scale\_out\_statistic](#input\_scale\_out\_statistic) | Estatistica usada para a condição de escala pra cima, como Average ou Sum | `string` | `"Averege"` | no |
| <a name="input_scale_tracking_cpu"></a> [scale\_tracking\_cpu](#input\_scale\_tracking\_cpu) | Valor de utilização de CPU alvo para o rastreamento de escala, em percentual. | `number` | `80` | no |
| <a name="input_scale_tracking_requests"></a> [scale\_tracking\_requests](#input\_scale\_tracking\_requests) | Número alvo de solicitaçãos por segundo para rastreamento de escala | `number` | `0` | no |
| <a name="input_scale_type"></a> [scale\_type](#input\_scale\_type) | Tipo de escalabilidade, como 'cpu', 'cpu\_tracking' ou 'request\_tracking' | `string` | `null` | no |
| <a name="input_service_cpu"></a> [service\_cpu](#input\_service\_cpu) | CPU que sera alocada para as tasks | `any` | n/a | yes |
| <a name="input_service_healthcheck"></a> [service\_healthcheck](#input\_service\_healthcheck) | Configuração do health check do serviço, incluindo caminho e protocolo. | `map(any)` | n/a | yes |
| <a name="input_service_hosts"></a> [service\_hosts](#input\_service\_hosts) | Lista de hosts associados ao serviço, geralmente especificados para configurações DNS. | `list(string)` | n/a | yes |
| <a name="input_service_launch_type"></a> [service\_launch\_type](#input\_service\_launch\_type) | Tipo de lançamento para o serviço no ECS, como 'FARGATE' ou 'EC2'. | `string` | n/a | yes |
| <a name="input_service_listener"></a> [service\_listener](#input\_service\_listener) | Listener que será usado pelo serviço | `string` | n/a | yes |
| <a name="input_service_memory"></a> [service\_memory](#input\_service\_memory) | Memória que sera alocada para as tasks | `any` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Nome do serviço | `string` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | Porta do servico | `number` | n/a | yes |
| <a name="input_service_task_count"></a> [service\_task\_count](#input\_service\_task\_count) | Número de instâncias da tarefa a serem executadas simultaneamente no serviço. | `number` | n/a | yes |
| <a name="input_service_task_execution_role"></a> [service\_task\_execution\_role](#input\_service\_task\_execution\_role) | Task execution role | `string` | n/a | yes |
| <a name="input_task_maximum"></a> [task\_maximum](#input\_task\_maximum) | Número maximo de tarefas que podem ser executadas pelo serviço | `number` | `10` | no |
| <a name="input_task_minimum"></a> [task\_minimum](#input\_task\_minimum) | Número minimo de tarefas que podem ser executadas pelo serviço | `number` | `2` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID da VPC | `string` | n/a | yes |
